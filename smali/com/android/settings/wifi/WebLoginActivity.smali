.class public Lcom/android/settings/wifi/WebLoginActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "WebLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_MILLIS:J = 0x1d4c0L

.field private static final CaptivePortalURL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static DEBUG:Z = false

.field private static FAIL_RESULT:I = 0x0

.field public static final LOGIN_WEB_URL:Ljava/lang/String; = "login_web_url"

.field private static final MSG_ID_CHECK_CONNECTIVITY_ONPAGE:I = 0x3ea

.field private static final MSG_ID_CHECK_CONNECTIVITY_ONPAUSE:I = 0x3e9

.field private static SUCCESS_RESULT:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final USER_AGENT:Ljava/lang/String; = "Android-Wifi/0.1"


# instance fields
.field private finalUrl:Ljava/lang/String;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mBackUpOnClickeListener:Landroid/view/View$OnClickListener;

.field private mCancel:Lcom/htc/widget/HtcFooterButton;

.field private mCountDownRunnalbe:Ljava/lang/Runnable;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mHandler:Landroid/os/Handler;

.field private mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

.field private mNoticeCountDown:Landroid/widget/TextView;

.field private mSsid:Ljava/lang/String;

.field private mWifiIntentFilter:Landroid/content/IntentFilter;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    .line 54
    const-string v0, "WebLoginActivity"

    sput-object v0, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/wifi/WebLoginActivity;->SUCCESS_RESULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$3;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mBackUpOnClickeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WebLoginActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WebLoginActivity;->checkConnectedWIFIStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WebLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkConnectedWIFIStatus(Z)V
    .locals 12
    .parameter "disableIfNoAccess"

    .prologue
    .line 327
    const-string v8, "Android-Wifi/0.1"

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 328
    .local v1, client:Landroid/net/http/AndroidHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://clients3.google.com/generate_204"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 330
    .local v4, request:Lorg/apache/http/client/methods/HttpGet;
    const/4 v3, 0x0

    .line 332
    .local v3, netAvailable:Z
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 333
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 342
    .local v6, statusCode:I
    const/16 v8, 0xcc

    if-ne v6, v8, :cond_3

    .line 344
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "connected sucessfully, close the activity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 346
    .local v7, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_0

    .line 347
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->SUCCESS_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.htc.wifi.cancel_captive_notify"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, cancelNotify:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WebLoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    .end local v0           #cancelNotify:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 363
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    if-nez v3, :cond_b

    .line 364
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 365
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v8, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set sign in status netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    .line 368
    if-eqz p1, :cond_2

    .line 369
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 370
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_1
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 386
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 389
    return-void

    .line 354
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_3
    :try_start_2
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Did not connect yet, do nothing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 356
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v2

    .line 357
    .local v2, e:Ljava/net/UnknownHostException;
    :try_start_3
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    if-nez v3, :cond_9

    .line 364
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 365
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v8, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set sign in status netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    .line 368
    if-eqz p1, :cond_2

    .line 369
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 370
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_4
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 378
    :catch_1
    move-exception v2

    .line 379
    .local v2, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 359
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_2
    move-exception v2

    .line 360
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_5
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 363
    if-nez v3, :cond_a

    .line 364
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 365
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v8, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set sign in status netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    .line 368
    if-eqz p1, :cond_2

    .line 369
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 370
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable netid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_6
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 378
    :catch_3
    move-exception v2

    .line 379
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 363
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v8

    if-nez v3, :cond_8

    .line 364
    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 365
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v9, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set sign in status netid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    sget v11, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    .line 368
    if-eqz p1, :cond_7

    .line 369
    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 370
    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disable netid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_7
    new-instance v9, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 386
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_7
    :goto_2
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 363
    throw v8

    .line 383
    :cond_8
    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v10, "net not available"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 378
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_4
    move-exception v2

    .line 379
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v10, "Show toast failed, "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 383
    .end local v7           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .local v2, e:Ljava/net/UnknownHostException;
    :cond_9
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .local v2, e:Ljava/lang/Exception;
    :cond_a
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_b
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    .restart local v7       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :catch_5
    move-exception v2

    .line 379
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private initWebView(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 260
    const v1, 0x7f090235

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    iput-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    .line 261
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 263
    .local v0, webViewSettings:Landroid/webkit/WebSettings;
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->setPureZoomMode(Z)V

    .line 264
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 265
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    new-instance v2, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;-><init>(Lcom/android/settings/wifi/WebLoginActivity;Lcom/android/settings/wifi/WebLoginActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWifiReceiver()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$2;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    return-void
.end method

.method private setupActionBar(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 242
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 244
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 248
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, headerText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 251
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0b2f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, strTitle:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 254
    iget-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 257
    :cond_0
    return-void
.end method

.method private setupCountDownTimer()V
    .locals 6

    .prologue
    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$4;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$5;

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WebLoginActivity$5;-><init>(Lcom/android/settings/wifi/WebLoginActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 306
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V

    .line 324
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WebLoginActivity;->requestWindowFeature(I)Z

    .line 93
    const v3, 0x7f040100

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WebLoginActivity;->setContentView(I)V

    .line 94
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WebLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 96
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WebLoginActivity;->initWifiReceiver()V

    .line 100
    const v3, 0x7f090236

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f090234

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x2040270

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0, p0}, Lcom/android/settings/wifi/WebLoginActivity;->setupActionBar(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "login_web_url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const-string v1, "http://clients3.google.com/generate_204"

    .line 110
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->initWebView(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/WebLoginActivity;->setupCountDownTimer()V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->clearCache(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    packed-switch p1, :pswitch_data_0

    .line 317
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 313
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V

    .line 314
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WebLoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WebLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WebLoginActivity$1;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v0}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->stopLoading()V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    :cond_0
    return-void
.end method
