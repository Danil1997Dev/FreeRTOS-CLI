/*
 * ssl_client.c
 *
 *  Created on: Mar 30, 2025
 *      Author: user
 */


#include "ssl_client.h"

char* root_cert_pem;

int ssl_client(int *sockfd, struct sockaddr_in *servAddr)
{
//    int sockfd;
    WOLFSSL_CTX* ctx;
    WOLFSSL* ssl;
    WOLFSSL_METHOD* method;
    char *cli_msg;
//    struct  sockaddr_in servAddr;
    const char message[] = "Hello, World!--------------------------------";

//    /* create and set up socket */
//    sockfd = socket(AF_INET, SOCK_STREAM, 0);
//    memset(&servAddr, 0, sizeof(servAddr));
//    servAddr.sin_family = AF_INET;
//    servAddr.sin_port = htons(SERV_PORT);

    /* initialize wolfssl library */
    wolfSSL_Init();
    method = wolfTLSv1_2_client_method(); /* use TLS v1.2 */

    /* make new ssl context */
    if ((ctx = wolfSSL_CTX_new(method)) == NULL) {
        sprintf(cli_msg,"Failed to wolfSSL_CTX_new\n");
        goto cleanup;
    }

    /* make new wolfSSL struct */
    if ((ssl = wolfSSL_new(ctx)) == NULL) {
        sprintf(cli_msg,"Failed to wolfSSL_new\n");
        goto free_ctx;
    }


    /* Add cert to ctx */
    if (load_cert(ctx, root_cert_pem) != SSL_SUCCESS) {
        sprintf(cli_msg,"Failed to wolfSSL_CTX_load_verify_locations\n");
        goto exit;
    }
    cliWrite(root_cert_pem);


    /* connect to socket */
    lwip_connect(*sockfd, (struct sockaddr *) servAddr, sizeof(*servAddr));
//    lwip_write(*sockfd, "C-------------------------------------\n\r", sizeof("C-------------------------------------\n\r"));



    /* Connect wolfssl to the socket, server, then send message */
    wolfSSL_set_fd(ssl, *sockfd);
    wolfSSL_connect(ssl);
//    lwip_write(*sockfd, "W-------------------------------------\n\r", sizeof("W-------------------------------------\n\r"));
//    wolfSSL_write(ssl, message, strlen(message));
//    lwip_write(*sockfd, "-------------------------------------\n\r", sizeof("-------------------------------------\n\r"));

    /* frees all data before client termination */
exit:
    wolfSSL_free(ssl);
    close(*sockfd);
free_ctx:
    wolfSSL_CTX_free(ctx);
cleanup:
    wolfSSL_Cleanup();
    return 0;
}

int load_cert(WOLFSSL_CTX *ctx, char *root_cert_pem)
{
	char *cli_msg;

	mount_fs(&fs, FS_MOUNT);

	read_fs((uint8_t *)"cacert.pem", (uint8_t *)root_cert_pem);

//	xSemaphoreGive(fsSemHandle);

//	xQueueReceive(structFSQueueHandle, pvBuffer, portMAX_DELAY);



    return wolfSSL_CTX_load_verify_buffer(ctx,
            (const unsigned char*)root_cert_pem,
            strlen(root_cert_pem),
            SSL_FILETYPE_PEM) ;
}
