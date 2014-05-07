.class public Lcom/android/settings/bluetooth/LocationAgent;
.super Ljava/lang/Object;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;,
        Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GOOGLE_MAPS_SHARED_LIBRARY_NAME:Ljava/lang/String; = "com.google.android.maps"

.field private static final GPS:Ljava/lang/String; = "gps"

.field private static final HANDLER_START_TRACKING:I = 0x65

.field private static final HANDLER_STOP_LOCATION_AGENT:I = 0x67

.field private static final HANDLER_STOP_TRACKING:I = 0x66

.field private static final LOCATION_MIS_DISTANCE:F = 0.0f

.field private static final LOCATION_UPDATE_MILLIS:J = 0x3e8L

.field private static final NETWORK:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "LocationAgent"

.field private static final TIMEOUT:J = 0xea60L

.field private static bIsGoogleMapsSharedLibraryChecked:Z

.field private static bIsGoogleMapsSharedLibraryExist:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

.field private final mOutOfRangeTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    sput-boolean v0, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryChecked:Z

    .line 279
    sput-boolean v0, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mTime:J

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;

    .line 58
    const-string v0, "LocationAgent"

    const-string v1, "new LocationAgent instance!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/LocationAgent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/LocationAgent;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/LocationAgent;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/LocationAgent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationAgent;->shutdownAgent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/LocationAgent;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/LocationAgent;Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/LocationAgent;Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private getGMMLinkString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "location"

    .prologue
    const-wide v8, 0x412e848000000000L

    .line 254
    if-nez p2, :cond_0

    .line 255
    const-string v6, "LocationAgent"

    const-string v7, "there is no outofrange location!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v6, ""

    .line 274
    :goto_0
    return-object v6

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocationAgent;->isGoogleMapsSharedLibraryExist(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.google.com/maps?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 262
    :cond_1
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, comma:I
    if-lez v1, :cond_3

    .line 265
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 266
    .local v2, latitude:D
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 267
    .local v4, longitude:D
    mul-double v6, v4, v8

    double-to-int v6, v6

    mul-double v7, v2, v8

    double-to-int v7, v7

    invoke-static {v6, v7}, Lcom/autonavi/xmgd/middleware/utility/SPCodeConvert;->WorldToSPCode(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, code:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v6, ""

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://map.amap.com/?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 269
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #latitude:D
    .end local v4           #longitude:D
    :catch_0
    move-exception v6

    .line 274
    :cond_3
    const-string v6, ""

    goto :goto_0
.end method

.method public static isGoogleMapsSharedLibraryExist(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 282
    sget-boolean v5, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryChecked:Z

    if-nez v5, :cond_1

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, installedLibraries:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 285
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 286
    .local v4, str:Ljava/lang/String;
    const-string v5, "com.google.android.maps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    sput-boolean v6, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryExist:Z

    .line 292
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    sput-boolean v6, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryChecked:Z

    .line 293
    const-string v5, "LocationAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has google maps shared library:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v2           #installedLibraries:[Ljava/lang/String;
    :cond_1
    sget-boolean v5, Lcom/android/settings/bluetooth/LocationAgent;->bIsGoogleMapsSharedLibraryExist:Z

    return v5

    .line 285
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #installedLibraries:[Ljava/lang/String;
    .restart local v3       #len$:I
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendmail(Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V
    .locals 15
    .parameter "account"
    .parameter "device"

    .prologue
    .line 220
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/bluetooth/HtcTagPreference;->getSendMailEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 221
    const-string v10, "LocationAgent"

    const-string v11, "user prefer not send mail!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/bluetooth/HtcTagPreference;->getOutOfRangeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 225
    .local v6, time:J
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    const v11, 0x20015

    invoke-static {v10, v6, v7, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, sTime:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/bluetooth/HtcTagPreference;->getOutOfRangeLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, location:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v3}, Lcom/android/settings/bluetooth/LocationAgent;->getGMMLinkString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, url:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0abe

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, title:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 233
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0ac0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, body:Ljava/lang/String;
    :goto_1
    const-string v10, "LocationAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start sending mail for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/htc/util/mail/MailMessage;->buildMessageForSend(Landroid/content/Context;J)Lcom/htc/util/mail/MailMessage;

    move-result-object v4

    .line 243
    .local v4, message:Lcom/htc/util/mail/MailMessage;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/mail/MailAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/htc/util/mail/MailMessage;->addAddress(ILjava/lang/String;)V

    .line 244
    invoke-virtual {v4, v8}, Lcom/htc/util/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4, v1}, Lcom/htc/util/mail/MailMessage;->setBody(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/htc/util/mail/MailAccount;->sendMail(Lcom/htc/util/mail/MailMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "LocationAgent"

    const-string v11, "fail to send outofrange mail!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 236
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #message:Lcom/htc/util/mail/MailMessage;
    :cond_1
    iget-object v10, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0abf

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #body:Ljava/lang/String;
    goto :goto_1
.end method

.method private sendmail(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "LocationAgent"

    const-string v3, "sendmail START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    .line 202
    .local v1, mm:Lcom/htc/util/mail/MailManager;
    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 203
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_0

    .line 204
    const-string v2, "LocationAgent"

    const-string v3, "No default mail account!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v2, Lcom/android/settings/bluetooth/LocationAgent$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/LocationAgent$2;-><init>(Lcom/android/settings/bluetooth/LocationAgent;Lcom/htc/util/mail/MailAccount;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocationAgent$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    const-string v2, "LocationAgent"

    const-string v3, "sendmail END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shutdownAgent()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->removeMessages(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationAgent;->stopHandlerThread()V

    .line 197
    return-void
.end method

.method private startHandlerThread()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Location Agent Handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 174
    new-instance v0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;-><init>(Lcom/android/settings/bluetooth/LocationAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    .line 176
    :cond_0
    return-void
.end method

.method private stopHandlerThread()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public startTracking(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 143
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/HtcTagPreference;->persistOutOfRangeTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocation:Landroid/location/Location;

    invoke-static {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcTagPreference;->persistOutOfRangeLocation(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;)V

    .line 147
    new-instance v2, Lcom/android/settings/bluetooth/LocationAgent$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/LocationAgent$1;-><init>(Lcom/android/settings/bluetooth/LocationAgent;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocationAgent$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationAgent;->startHandlerThread()V

    .line 160
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, p1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stopTracking(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocationAgent;->startHandlerThread()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocationAgent;->mLocationTracker:Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method
