.class public final Lcom/android/settings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiStatusReceiver$1;,
        Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;,
        Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;,
        Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;,
        Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;,
        Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;
    }
.end annotation


# static fields
.field private static final CaptivePortalURL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static FAIL_RESULT:I = 0x0

.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x7f020202

.field private static final MAGICSTR:Ljava/lang/String; = "google"

.field private static final PORTAL_DETECT_URL:Ljava/lang/String; = "http://www.htc.com"

.field private static SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static final URL:Ljava/lang/String; = "http://www.google.com"

.field private static final USER_AGENT:Ljava/lang/String; = "Android-Wifi/0.1"

.field private static final VERIZON_URL:Ljava/lang/String; = "http://www.verizon.com"

.field private static final VZW_SSID:Ljava/lang/String; = "VerizonWiFi"

.field private static mEapErrorUI:Z

.field private static mEnterSetting:Z

.field private static mShowDialog:Z

.field private static mUITriger:Z

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private DIALOG_TYPE_LAN:I

.field private DIALOG_TYPE_REDIRECT:I

.field private DIALOG_TYPE_WAN:I

.field private final MAC_LENGTH:I

.field private final RETRY_TIMES:I

.field private final VZWLoginURLSuffix:Ljava/lang/String;

.field private final VZWMAGICSTR:Ljava/lang/String;

.field private mAutoWISPr:Z

.field private mContext:Landroid/content/Context;

.field private mLine:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mLoginURL:Ljava/lang/String;

.field private mLogoffURL:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mModelNumer:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mSSID:Ljava/lang/String;

.field private mShowDialogType:I

.field private mTempRedirectURL:Ljava/lang/String;

.field private mVzwRedirectURL:Ljava/lang/String;

.field private mWISPrInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/WISPrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

.field private mWISPrURL:Ljava/lang/String;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "loginname"

    aput-object v1, v0, v3

    const-string v1, "password"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "connectedssid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->sProjection:[Ljava/lang/String;

    .line 136
    sput v3, Lcom/android/settings/wifi/WifiStatusReceiver;->FAIL_RESULT:I

    .line 137
    sput v4, Lcom/android/settings/wifi/WifiStatusReceiver;->SUCCESS_RESULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 97
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z

    .line 120
    const-string v0, "vzwwifi.com"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->VZWLoginURLSuffix:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;

    .line 123
    const-string v0, "verizon"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->VZWMAGICSTR:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLine:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mMacAddress:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mModelNumer:Ljava/lang/String;

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->RETRY_TIMES:I

    .line 128
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->MAC_LENGTH:I

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I

    .line 131
    iput v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_WAN:I

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_LAN:I

    .line 1250
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->postVZWAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiStatusReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiStatusReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusReceiver;->loadAccountInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;

    return-object p1
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 260
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    return-void
.end method

.method private createWifiSignInNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 145
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 147
    .local v3, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v2, notification:Landroid/app/Notification$Builder;
    const v5, 0x7f020202

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 151
    const v5, 0x7f0c085c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 154
    const v5, 0x7f0c0388

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 168
    if-eqz p2, :cond_1

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, browser:Landroid/content/Intent;
    :goto_0
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 177
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    .line 199
    .end local v0           #browser:Landroid/content/Intent;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notification:Landroid/app/Notification$Builder;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 171
    .restart local v2       #notification:Landroid/app/Notification$Builder;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http://www.htc.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #browser:Landroid/content/Intent;
    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1227
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1230
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1235
    :catch_0
    move-exception v1

    .line 1238
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 1232
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSHA1string(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "message"

    .prologue
    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v6, sb:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 840
    .local v2, digest:Ljava/security/MessageDigest;
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 842
    .local v5, msg:[B
    move-object v0, v5

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 843
    .local v1, b:B
    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #msg:[B
    :catch_0
    move-exception v7

    .line 849
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 845
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private getWificonfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x1

    .line 1201
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1202
    .local v0, enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1205
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1209
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_3

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasSecurity(Landroid/net/wifi/WifiInfo;)Z
    .locals 7
    .parameter "wifiInfo"

    .prologue
    .line 1178
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1179
    .local v1, networkId:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1181
    .local v3, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_1

    .line 1183
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiStatusReceiver"

    const-string v5, "wifiConfigs is not set correctly"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_0
    const/4 v4, 0x1

    .line 1197
    :goto_0
    return v4

    .line 1188
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 1190
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1192
    .local v2, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v4, :cond_2

    .line 1193
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->getWificonfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    goto :goto_0

    .line 1188
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1196
    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not find out wificonfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPackageExisted(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 1304
    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1305
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1307
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1308
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1309
    const/4 v4, 0x1

    .line 1312
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method private loadAccountInfo()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 683
    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    .line 685
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/wifi/WifiStatusReceiver;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 688
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 690
    .local v7, count:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 692
    .local v8, id:J
    const-string v0, "loginname"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 693
    .local v13, username:Ljava/lang/String;
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WISPrAccountEditor;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 694
    .local v11, password:Ljava/lang/String;
    const-string v0, "connectedssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 697
    .local v12, ssid:Ljava/lang/String;
    new-instance v10, Lcom/android/settings/wifi/WISPrInfo;

    invoke-direct {v10}, Lcom/android/settings/wifi/WISPrInfo;-><init>()V

    .line 698
    .local v10, info:Lcom/android/settings/wifi/WISPrInfo;
    iput-wide v8, v10, Lcom/android/settings/wifi/WISPrInfo;->id:J

    .line 699
    iput-object v13, v10, Lcom/android/settings/wifi/WISPrInfo;->username:Ljava/lang/String;

    .line 700
    iput-object v11, v10, Lcom/android/settings/wifi/WISPrInfo;->password:Ljava/lang/String;

    .line 701
    iput-object v12, v10, Lcom/android/settings/wifi/WISPrInfo;->ssid:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v7           #count:I
    .end local v8           #id:J
    .end local v10           #info:Lcom/android/settings/wifi/WISPrInfo;
    .end local v11           #password:Ljava/lang/String;
    .end local v12           #ssid:Ljava/lang/String;
    .end local v13           #username:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 714
    return-void

    .line 709
    .restart local v7       #count:I
    .restart local v8       #id:J
    .restart local v10       #info:Lcom/android/settings/wifi/WISPrInfo;
    .restart local v11       #password:Ljava/lang/String;
    .restart local v12       #ssid:Ljava/lang/String;
    .restart local v13       #username:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Exit Wi-fi Setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    .line 484
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 485
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 477
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Enter Wi-fi Setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    .line 479
    return-void
.end method

.method private postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    .locals 22
    .parameter "loginURL"
    .parameter "info"

    .prologue
    .line 1034
    const/16 v16, 0x0

    .line 1035
    .local v16, validate:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 v19, 0x0

    .line 1104
    :goto_0
    return v19

    .line 1037
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/HttpsClient;->createHttpsClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 1038
    .local v5, client:Landroid/net/http/AndroidHttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v8, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Ljava/util/ArrayList;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1041
    .local v10, nameValuePair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "UserName"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/settings/wifi/WISPrInfo;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "Password"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/settings/wifi/WISPrInfo;->password:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    :try_start_0
    new-instance v19, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_1
    :try_start_1
    const-string v19, "execute HTTP Post"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v5, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 1054
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 1057
    .local v15, statusCode:I
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1061
    .local v11, resp:Ljava/lang/String;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 1062
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 1064
    .local v13, result:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    move-object/from16 v19, v0

    invoke-static {v13}, Lcom/android/settings/wifi/WISPrManager;->detectWISPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1068
    .local v18, wisprStr:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WISPrManager;->parseAuthReplyWISPr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 1070
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_3

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/WISPrManager;->validateAuthReplyWISPr(Ljava/util/HashMap;)Z

    move-result v16

    .line 1073
    if-eqz v16, :cond_3

    .line 1074
    const-string v19, "LogoffURL"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLogoffURL:Ljava/lang/String;

    .line 1075
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content://wispr/account/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/settings/wifi/WISPrInfo;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1076
    .local v4, UriStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1077
    .local v14, sAccountId:Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v17, values:Landroid/content/ContentValues;
    const-string v19, "connectedssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1085
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LogoffURL:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1101
    .end local v4           #UriStr:Ljava/lang/String;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #resp:Ljava/lang/String;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #result:Ljava/lang/String;
    .end local v14           #sAccountId:Landroid/net/Uri;
    .end local v15           #statusCode:I
    .end local v17           #values:Landroid/content/ContentValues;
    .end local v18           #wisprStr:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move/from16 v19, v16

    .line 1104
    goto/16 :goto_0

    .line 1046
    :catch_0
    move-exception v6

    .line 1047
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "httppost UnsupportedEncodingException: loginURL:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1092
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v6

    .line 1094
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Http ClientProtocolException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1101
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v19

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v19

    .line 1096
    :catch_2
    move-exception v6

    .line 1097
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Http IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private postVZWAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    .locals 13
    .parameter "loginURL"
    .parameter "info"

    .prologue
    .line 961
    invoke-static {}, Lcom/android/settings/wifi/HttpsClient;->createHttpsClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 962
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 964
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v8, 0x0

    .line 966
    .local v8, validate:Z
    const-string v10, "Connection"

    const-string v11, "Close"

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v10, "X-wificlient"

    const-string v11, "deviceos=0.0.0, device="

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    new-instance v5, Ljava/util/ArrayList;

    const/16 v10, 0x9

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 972
    .local v5, nameValuePair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/framework/storage/customize/HtcCustomizedDeviceName;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusReceiver;->getMsvSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mModelNumer:Ljava/lang/String;

    .line 974
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "button"

    const-string v12, "Login"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "UserName"

    iget-object v12, p2, Lcom/android/settings/wifi/WISPrInfo;->username:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "Password"

    iget-object v12, p2, Lcom/android/settings/wifi/WISPrInfo;->password:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "FNAME"

    const-string v12, "0"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "OriginatingServer"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "device-type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "calling-station-id"

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mMacAddress:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mModelNumer:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 983
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "device-model-number"

    const-string v12, ""

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :goto_0
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_1
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 998
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 999
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 1000
    .local v7, result:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "auth result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    if-eqz v10, :cond_1

    .line 1004
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    invoke-static {v7}, Lcom/android/settings/wifi/WISPrManager;->detectWISPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1006
    .local v9, wisprStr:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    invoke-virtual {v10, v9}, Lcom/android/settings/wifi/WISPrManager;->parseAuthReplyWISPr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 1008
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 1009
    iget-object v10, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    invoke-virtual {v10, v4}, Lcom/android/settings/wifi/WISPrManager;->validateAuthReplyWISPr(Ljava/util/HashMap;)Z

    move-result v8

    .line 1011
    if-eqz v8, :cond_1

    .line 1012
    const-string v10, "WifiStatusReceiver"

    const-string v11, " Data aggregation connection successful"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1027
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #result:Ljava/lang/String;
    .end local v9           #wisprStr:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1029
    return v8

    .line 985
    :cond_2
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "device-model-number"

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mModelNumer:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httppost UnsupportedEncodingException: loginURL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1020
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    const-string v10, "WifiStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http ClientProtocolException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1027
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v10

    .line 1023
    :catch_2
    move-exception v1

    .line 1024
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v10, "WifiStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http auth message IOException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1244
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1246
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1244
    return-object v1

    .line 1246
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method public static setUIflag(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 467
    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trigger UI flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sput-boolean p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 469
    return-void
.end method

.method private shouldTriggerDataConnection()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1133
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    .line 1134
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    .line 1136
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->hasSecurity(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 1138
    .local v0, openSecurity:Z
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableNetworkDetection()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 1142
    :cond_2
    return v1

    .end local v0           #openSecurity:Z
    :cond_3
    move v0, v1

    .line 1136
    goto :goto_0
.end method

.method private showDialoType(ILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "url"

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 674
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 675
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 676
    const-string v1, "redirectTo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 678
    return-void
.end method

.method public static showEapErrorUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 472
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Trigger UI flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sput-boolean p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    .line 474
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 204
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    .line 207
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    const-string v3, "HTC transfer tool"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 209
    const-string v2, "com.htc.dnatransfer.legacy"

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch browser due to frisbee url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v0, browserIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v0           #browserIntent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->createWifiSignInNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 223
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f020202

    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStatusReceiver"

    const-string v3, "show wifi notify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private updateText(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 1220
    return-void
.end method


# virtual methods
.method getAcccountInfo()Lcom/android/settings/wifi/WISPrInfo;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 804
    iget-object v9, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 806
    .local v7, tm:Landroid/telephony/TelephonyManager;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v10, "htctelephony"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/HtcTelephonyManager;

    .line 808
    .local v2, htm:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 809
    new-instance v3, Lcom/android/settings/wifi/WISPrInfo;

    invoke-direct {v3}, Lcom/android/settings/wifi/WISPrInfo;-><init>()V

    .line 810
    .local v3, info:Lcom/android/settings/wifi/WISPrInfo;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "MMddyyyy"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 811
    .local v6, timeFormat:Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, time:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, line:Ljava/lang/String;
    const-string v9, "CdmaSfEuimid"

    invoke-virtual {v2, v9, v8}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 814
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 815
    .local v1, euimid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 816
    const-string v9, "CdmaSfEuimid"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "WifiStatusReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 823
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VzW3652987!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@hds.vzw3g.com"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/wifi/WISPrInfo;->username:Ljava/lang/String;

    .line 824
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiStatusReceiver;->getSHA1string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/wifi/WISPrInfo;->password:Ljava/lang/String;

    .line 833
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #euimid:Ljava/lang/String;
    .end local v3           #info:Lcom/android/settings/wifi/WISPrInfo;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #time:Ljava/lang/String;
    .end local v6           #timeFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 826
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #euimid:Ljava/lang/String;
    .restart local v3       #info:Lcom/android/settings/wifi/WISPrInfo;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #time:Ljava/lang/String;
    .restart local v6       #timeFormat:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v9, "WifiStatusReceiver"

    const-string v10, "no tel info"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 827
    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #euimid:Ljava/lang/String;
    .end local v3           #info:Lcom/android/settings/wifi/WISPrInfo;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #time:Ljava/lang/String;
    .end local v6           #timeFormat:Ljava/text/SimpleDateFormat;
    :cond_3
    move-object v3, v8

    .line 833
    goto :goto_0
.end method

.method getConfifgurationById()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1147
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_1

    move-object v2, v5

    .line 1175
    :cond_0
    :goto_0
    return-object v2

    .line 1151
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1153
    .local v1, netId:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_2

    .line 1154
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1157
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1159
    .local v3, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_4

    .line 1161
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiStatusReceiver"

    const-string v6, "wifiConfigs is not set correctly"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v5

    .line 1162
    goto :goto_0

    .line 1166
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_6

    .line 1168
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1170
    .local v2, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_5

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v4, :cond_0

    .line 1166
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object v2, v5

    .line 1175
    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectTo"

    .prologue
    .line 1128
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    .line 270
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 271
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    .line 272
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 275
    .local v7, netinfo:Landroid/net/NetworkInfo;
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 276
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/android/settings/wifi/WISPrManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;

    .line 278
    if-eqz v7, :cond_3

    .line 279
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received state change state: isConnected()="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", state="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :goto_0
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CUSOM_VZW_WISPR:Z

    if-eqz v12, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_a

    const-string v12, "VerizonWiFi"

    iget-object v13, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 285
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLine:Ljava/lang/String;

    .line 286
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;

    .line 288
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, macAddress:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 291
    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, names:[Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v6, :cond_4

    array-length v12, v6

    const/4 v13, 0x6

    if-eq v12, v13, :cond_4

    .line 294
    :cond_1
    const-string v12, "WifiStatusReceiver"

    const-string v13, "invalid mac address"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v5           #macAddress:Ljava/lang/String;
    .end local v6           #names:[Ljava/lang/String;
    .end local v7           #netinfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    return-void

    .line 281
    .restart local v7       #netinfo:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "WifiStatusReceiver"

    const-string v13, "netinfo is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    .restart local v5       #macAddress:Ljava/lang/String;
    .restart local v6       #names:[Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mMacAddress:Ljava/lang/String;

    .line 298
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x5

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_5
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 308
    .local v11, tm:Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 310
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_7

    .line 311
    const-string v12, "WifiStatusReceiver"

    const-string v13, "sim state not ready"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 301
    .end local v6           #names:[Ljava/lang/String;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v12, "WifiStatusReceiver"

    const-string v13, "get invalid mac address"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 315
    .restart local v6       #names:[Ljava/lang/String;
    .restart local v11       #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, mLine:Ljava/lang/String;
    if-nez v4, :cond_9

    .line 318
    const-string v12, "WifiStatusReceiver"

    const-string v13, "no line number"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    .end local v4           #mLine:Ljava/lang/String;
    :cond_8
    const-string v12, "WifiStatusReceiver"

    const-string v13, "tm is null or not cdma phone"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 326
    .restart local v4       #mLine:Ljava/lang/String;
    :cond_9
    const-string v12, "WifiStatusReceiver"

    const-string v13, "start process"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v12, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwDataConnection;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 331
    .end local v4           #mLine:Ljava/lang/String;
    .end local v5           #macAddress:Ljava/lang/String;
    .end local v6           #names:[Ljava/lang/String;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    :cond_a
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusReceiver;->shouldTriggerDataConnection()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 332
    const-string v12, "WifiStatusReceiver"

    const-string v13, " trigger  connection"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_b

    .line 334
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    .line 337
    :cond_b
    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CHT_SIM_TOAST:Z

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    const-string v13, "CHT Wi-Fi Auto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 338
    new-instance v12, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiStatusReceiver$checkChtWifiCoinfiguration;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 342
    :cond_c
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/settings/wifi/CustomUtil;->ignorePortalDetection(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 344
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ignore ssid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 347
    :cond_d
    const-string v12, "WifiStatusReceiver"

    const-string v13, "continue"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v12, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    sget-boolean v12, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    sput-boolean v12, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialog:Z

    .line 352
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 360
    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_2

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusReceiver;->cancelNotification()V

    goto/16 :goto_1

    .line 354
    :cond_e
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I

    goto :goto_2

    .line 402
    .end local v7           #netinfo:Landroid/net/NetworkInfo;
    :cond_f
    const-string v12, "com.htc.wifi.AKA_INVALID_SIM"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-boolean v12, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    if-eqz v12, :cond_10

    .line 403
    const-string v12, "WifiStatusReceiver"

    const-string v13, "received wifi aka sim error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    .line 405
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v10, sIntent:Landroid/content/Intent;
    const-class v12, Lcom/android/settings/wifi/EapErrorDialog;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    const/high16 v12, 0x1000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 409
    .end local v10           #sIntent:Landroid/content/Intent;
    :cond_10
    const-string v12, "android.net.wifi.ERROR"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 410
    const-string v12, "errorCode"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 412
    .local v2, errorCode:I
    const-string v12, "WifiStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v12, 0xb

    if-ne v2, v12, :cond_11

    sget-boolean v12, Lcom/android/settings/wifi/CustomUtil;->ENABLE_HTC_OFFLOAD:Z

    if-eqz v12, :cond_11

    .line 421
    :cond_11
    const/16 v12, 0x15

    if-ne v2, v12, :cond_12

    .line 422
    const/16 v12, 0x3eb

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->startDialog(I)V

    .line 423
    :cond_12
    const/16 v12, 0x16

    if-ne v2, v12, :cond_2

    .line 424
    const/16 v12, 0x3ec

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/WifiStatusReceiver;->startDialog(I)V

    goto/16 :goto_1

    .line 427
    .end local v2           #errorCode:I
    :cond_13
    const-string v12, "com.htc.wifi.cmcc_reminder_noty"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 428
    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_14

    const-string v12, "WifiStatusReceiver"

    const-string v13, "received cmcc_reminder_noty"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_14
    const-string v12, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 430
    .local v9, pm:Landroid/os/PowerManager;
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 431
    .local v3, km:Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 432
    :cond_15
    const-string v12, "WifiStatusReceiver"

    const-string v13, "screen off and ignore it"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    :cond_16
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 436
    .restart local v10       #sIntent:Landroid/content/Intent;
    const-class v12, Lcom/android/settings/wifi/CmccReminderDialog;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    const/high16 v12, 0x1000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    const-string v12, "wifi_settings_on"

    sget-boolean v13, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 440
    .end local v3           #km:Landroid/app/KeyguardManager;
    .end local v9           #pm:Landroid/os/PowerManager;
    .end local v10           #sIntent:Landroid/content/Intent;
    :cond_17
    const-string v12, "com.htc.wifi.cancel_captive_notify"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 441
    iget-object v12, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 442
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const v12, 0x7f020202

    invoke-virtual {v8, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
