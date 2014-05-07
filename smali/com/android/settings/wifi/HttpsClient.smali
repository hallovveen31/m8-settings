.class public Lcom/android/settings/wifi/HttpsClient;
.super Ljava/lang/Object;
.source "HttpsClient.java"


# static fields
.field public static final DEFAULT_HTTP_TIMEOUT:I = 0x7530

.field public static final HTTP_RETRY_TIMEOUT:I = 0xea60

.field private static TAG:Ljava/lang/String; = null

.field private static final USER_AGENT:Ljava/lang/String; = "Android-Wifi/0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "HttpsClient"

    sput-object v0, Lcom/android/settings/wifi/HttpsClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpsClient()Landroid/net/http/AndroidHttpClient;
    .locals 7

    .prologue
    const/16 v5, 0x7530

    .line 20
    const-string v3, "Android-Wifi/0.1"

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 22
    .local v1, httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.connection.timeout"

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 26
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.socket.timeout"

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 32
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v4}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 33
    .local v2, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v3, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v3}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 35
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/wifi/HttpsClient;->TAG:Ljava/lang/String;

    const-string v4, "can not create ssl socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
