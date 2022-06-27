#include <string.h>
#include "exnet.h"
#include <enet/enet.h>

int handle_load(UnifexEnv *env, void ** priv_data) {
    UNIFEX_UNUSED(env);
    UNIFEX_UNUSED(priv_data);

    enet_initialize();
    return 0;
}

void handle_unload(UnifexEnv *env, void * priv_data) {
    UNIFEX_UNUSED(env);
    UNIFEX_UNUSED(priv_data);

    enet_deinitialize();
}

UNIFEX_TERM host_create(UnifexEnv* env, exnet_address address, unsigned int peer_count, unsigned int channel_limit,
    unsigned int incoming_bandwith, unsigned int outgoind_bandwith) {
    ENetAddress enet_address;
    enet_address.host = address.host;
    enet_address.port = address.port;

    ENetHost* enet_host;
    enet_host = enet_host_create(&enet_address, peer_count, channel_limit, incoming_bandwith, outgoind_bandwith);
    if (!enet_host)
        return host_create_result_error(env, "fatal");

    UnifexPayload* host = unifex_alloc(sizeof(UnifexPayload));
    if (!unifex_payload_alloc(env, UNIFEX_PAYLOAD_BINARY, sizeof(ENetHost), host))
        return host_create_result_error(env, "fatal");

    memcpy(host->data, enet_host, sizeof(ENetHost));
    return host_create_result_ok(env, host);
}

UNIFEX_TERM address_create(UnifexEnv* env, char* host, unsigned int port) {
    ENetAddress address;
    if (enet_address_set_host(&address, host) < 0) {
        return address_create_result_error_host(env);
    }
    address.port = port;

    exnet_address ret_address;
    ret_address.host = address.host;
    ret_address.port = address.port;

    return address_create_result_ok(env, ret_address);
}