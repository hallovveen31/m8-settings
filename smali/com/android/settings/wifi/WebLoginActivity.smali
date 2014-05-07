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

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    const-string v0, "WebLoginActivity"

    sput-object v0, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/wifi/WebLoginActivity;->SUCCESS_RESULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$3;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mBackUpOnClickeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WebLoginActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WebLoginActivity;->checkConnectedWIFIStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WebLoginActivity;)Lcom/htc/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WebLoginActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WebLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity;->finalUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WebLoginActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkConnectedWIFIStatus(Z)V
    .locals 12

    const-string v8, "Android-Wifi/0.1"

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://clients3.google.com/generate_204"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v8, 0xcc

    if-ne v6, v8, :cond_3

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "connected sucessfully, close the activity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->SUCCESS_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.htc.wifi.cancel_captive_notify"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-nez v3, :cond_b

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

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

    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

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

    :try_start_1
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    return-void

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

    :catch_0
    move-exception v2

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

    if-nez v3, :cond_9

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

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

    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

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

    :try_start_4
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :try_start_5
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_a

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

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

    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    sget v10, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

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

    :try_start_6
    new-instance v8, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    if-nez v3, :cond_8

    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

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

    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    sget v11, Lcom/android/settings/wifi/WebLoginActivity;->FAIL_RESULT:I

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    if-eqz p1, :cond_7

    iget-object v9, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

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

    :try_start_7
    new-instance v9, Lcom/android/settings/wifi/WebLoginActivity$6;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WebLoginActivity$6;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_2
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8

    :cond_8
    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v10, "net not available"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v2

    sget-object v9, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v10, "Show toast failed, "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_9
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "net not available"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_5
    move-exception v2

    sget-object v8, Lcom/android/settings/wifi/WebLoginActivity;->TAG:Ljava/lang/String;

    const-string v9, "Show toast failed, "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private initWebView(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const v1, 0x7f090235

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    iput-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1, v2}, Lcom/htc/wrap/android/webkit/HtcWrapWebView;->setPureZoomMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    new-instance v2, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WebLoginActivity$LoginWebClient;-><init>(Lcom/android/settings/wifi/WebLoginActivity;Lcom/android/settings/wifi/WebLoginActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWifiReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$2;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setupActionBar(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0b2f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WebLoginActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupCountDownTimer()V
    .locals 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WebLoginActivity$4;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownRunnalbe:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wifi/WebLoginActivity$5;

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WebLoginActivity$5;-><init>(Lcom/android/settings/wifi/WebLoginActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v3, 0x7f040100

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mSsid:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WebLoginActivity;->initWifiReceiver()V

    const v3, 0x7f090236

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mNoticeCountDown:Landroid/widget/TextView;

    const v3, 0x7f090234

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x2040270

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p0}, Lcom/android/settings/wifi/WebLoginActivity;->setupActionBar(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "login_web_url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "http://clients3.google.com/generate_204"

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->initWebView(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WebLoginActivity;->setupCountDownTimer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WebLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WebLoginActivity$1;-><init>(Lcom/android/settings/wifi/WebLoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mLoginWebView:Lcom/htc/wrap/android/webkit/HtcWrapWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WebLoginActivity;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
