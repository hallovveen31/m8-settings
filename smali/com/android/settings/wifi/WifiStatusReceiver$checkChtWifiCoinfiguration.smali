.class Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkChtWifiCoinfiguration"
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
    .line 1250
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1250
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "paramArrayOfString"

    .prologue
    const/4 v8, 0x1

    .line 1254
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiStatusReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking wifi config wifiInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2400(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2400(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1258
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2400(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    .line 1260
    .local v4, netId:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2500(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1262
    .local v1, configs:Ljava/util/List;
    if-nez v1, :cond_2

    .line 1264
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiStatusReceiver"

    const-string v6, "wifiConfigs is not set correctly"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v1           #configs:Ljava/util/List;
    .end local v4           #netId:I
    :cond_1
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 1268
    .restart local v1       #configs:Ljava/util/List;
    .restart local v4       #netId:I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 1270
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1272
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_3

    .line 1273
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1274
    .local v2, enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v2, :cond_3

    .line 1275
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 1276
    new-array v5, v8, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 1268
    .end local v2           #enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1290
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1292
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1296
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1250
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
