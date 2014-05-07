.class Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwDataConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v10, "Android-Wifi/0.1"

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://www.verizon.com"

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiStatusReceiver"

    const-string v11, "Trigger data aggregation network detection"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/4 v4, 0x0

    const/16 v10, 0x12d

    if-eq v7, v10, :cond_1

    const/16 v10, 0x12e

    if-eq v7, v10, :cond_1

    const/16 v10, 0x12f

    if-eq v7, v10, :cond_1

    const/16 v10, 0x133

    if-ne v7, v10, :cond_2

    :cond_1
    const-string v10, "Location"

    invoke-interface {v6, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const/4 v3, 0x0

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "WifiStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "redirect url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", statusCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", host="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v4, :cond_5

    const-string v10, "http://www.verizon.com"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v3, :cond_4

    const-string v10, "verizon"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static {v10, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$402(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vzwwifi.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "WifiStatusReceiver"

    const-string v11, "trigger wispr"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v8, :cond_6

    new-instance v10, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    :goto_0
    invoke-virtual {v10, v11, v12}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    const/4 v10, 0x0

    return-object v10

    :catch_0
    move-exception v1

    :try_start_1
    const-string v10, "WifiStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v8, :cond_6

    new-instance v10, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    if-eqz v8, :cond_7

    new-instance v11, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_7
    throw v10
.end method
