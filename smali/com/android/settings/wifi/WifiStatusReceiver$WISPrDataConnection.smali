.class Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WISPrDataConnection"
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
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 852
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "urls"

    .prologue
    .line 854
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    .line 855
    const-string v12, "Android-Wifi/0.1"

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 859
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .local v6, request:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    if-nez v6, :cond_1

    const/4 v12, 0x0

    .line 943
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    return-object v12

    .line 860
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catch_0
    move-exception v1

    .line 861
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid redirect url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    const/4 v6, 0x0

    .line 863
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpGet;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, 0x0

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$902(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 868
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v10, 0x0

    .line 870
    .local v10, validate:Z
    :try_start_1
    invoke-virtual {v0, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 871
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 874
    .local v9, statusCode:I
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 876
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 877
    .local v3, headers:[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v12, v3

    if-ge v4, v12, :cond_2

    .line 878
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v4

    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "header_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v4

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 885
    .end local v3           #headers:[Lorg/apache/http/Header;
    .end local v4           #i:I
    :cond_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 886
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 889
    .local v8, result:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/wifi/WISPrManager;->detectWISPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 892
    .local v11, wisprStr:Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 894
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/settings/wifi/WISPrManager;->parseWISPr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 895
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/settings/wifi/WISPrManager;->validateWISPr(Ljava/util/HashMap;)Z

    move-result v10

    .line 896
    if-eqz v10, :cond_3

    .line 897
    iget-object v13, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const-string v12, "LoginURL"

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1602(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_3
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "1. mLoginURL = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", validate= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", wisprStr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 919
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #result:Ljava/lang/String;
    .end local v9           #statusCode:I
    .end local v11           #wisprStr:Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 923
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v10           #validate:Z
    :cond_5
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 924
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    iget-object v13, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static {v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v13

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 927
    :cond_6
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mWISPrInfo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mLoginURL="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mAutoWISPr = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static {v14}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 929
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 930
    iget-object v13, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v14

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/wifi/WISPrInfo;

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v13, v14, v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 931
    const-string v12, "WifiStatusReceiver"

    const-string v13, "authentication successful"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->publishProgress([Ljava/lang/Object;)V

    .line 933
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, -0x1

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 938
    .end local v4           #i:I
    :cond_7
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    .line 941
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, 0x0

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V

    .line 943
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 906
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #result:Ljava/lang/String;
    .restart local v9       #statusCode:I
    .restart local v10       #validate:Z
    .restart local v11       #wisprStr:Ljava/lang/String;
    :cond_9
    :try_start_2
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    iget-object v13, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V

    .line 907
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, 0x0

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$902(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const/4 v13, -0x1

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 910
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    const-string v13, "WISPr not found"

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2200(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 915
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #result:Ljava/lang/String;
    .end local v9           #statusCode:I
    .end local v11           #wisprStr:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 916
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 919
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12

    .line 929
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v10           #validate:Z
    .restart local v4       #i:I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 947
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 949
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2100(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 951
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 852
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
