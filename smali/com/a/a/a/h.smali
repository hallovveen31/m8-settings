.class public Lcom/a/a/a/h;
.super Ljava/lang/Object;
.source "NetManagerApache.java"


# static fields
.field private static b:Lcom/a/a/a/h;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/h;->b:Lcom/a/a/a/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/a/a/a/h;
    .locals 2
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/a/a/a/h;->b:Lcom/a/a/a/h;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0}, Lcom/a/a/a/h;-><init>()V

    sput-object v0, Lcom/a/a/a/h;->b:Lcom/a/a/a/h;

    .line 31
    sget-object v0, Lcom/a/a/a/h;->b:Lcom/a/a/a/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/h;->a:Landroid/content/Context;

    .line 33
    :cond_0
    sget-object v0, Lcom/a/a/a/h;->b:Lcom/a/a/a/h;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/a/a/a/h;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v2, 0x0

    .line 47
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/a/h;->a()Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 48
    :try_start_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    const-string v6, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v6, "text/xml"

    invoke-virtual {v4, v6}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 52
    const-string v6, "Content-Type"

    const-string v8, "application/soap+xml;charset=UTF-8"

    invoke-virtual {v1, v6, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 55
    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 56
    const-string v1, "utf-8"

    .line 57
    const-string v4, "Content-Type"

    invoke-interface {v8, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v9

    .line 59
    if-eqz v9, :cond_2

    .line 60
    array-length v10, v9

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v10, :cond_2

    aget-object v4, v9, v6

    .line 61
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 62
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 63
    const-string v11, ";"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 64
    if-eqz v11, :cond_0

    array-length v4, v11

    if-lez v4, :cond_0

    .line 65
    array-length v12, v11

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_0

    aget-object v13, v11, v4

    .line 66
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "charset="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 68
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "charset="

    const-string v11, ""

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v1

    .line 77
    const/4 v1, 0x0

    .line 78
    const-string v4, "Content-Encoding"

    invoke-interface {v8, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v9

    .line 79
    if-eqz v9, :cond_4

    .line 80
    array-length v10, v9

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_4

    aget-object v11, v9, v4

    .line 81
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 83
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    :cond_4
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v9, 0xc8

    if-ne v4, v9, :cond_8

    .line 88
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 89
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 90
    if-eqz v1, :cond_d

    const-string v4, "gzip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 91
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    :goto_3
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 95
    :try_start_3
    const-string v1, ""

    .line 96
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 97
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 100
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 104
    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_6
    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 109
    :cond_5
    if-eqz v3, :cond_6

    .line 110
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_6
    if-eqz v5, :cond_7

    .line 113
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_7
    throw v1

    :cond_8
    move-object v4, v3

    move-object v3, v2

    .line 106
    :cond_9
    if-eqz v3, :cond_a

    .line 107
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 109
    :cond_a
    if-eqz v4, :cond_b

    .line 110
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_b
    if-eqz v5, :cond_c

    .line 113
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 116
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :catchall_1
    move-exception v1

    move-object v5, v4

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_6

    .line 100
    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_5

    :cond_d
    move-object v4, v3

    goto :goto_3
.end method

.method public a()Lorg/apache/http/client/HttpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x4e20

    .line 120
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 121
    invoke-direct {p0}, Lcom/a/a/a/h;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 126
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v3, "http.route.default-proxy"

    invoke-interface {v1, v3, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 130
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    return-object v0
.end method
