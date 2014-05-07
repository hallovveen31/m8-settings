.class public Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;
.super Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;
.source "HtcDefaultRoamingStateNotifier.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mThis:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->notifyChange()V

    return-void
.end method


# virtual methods
.method protected getPhoneStateEventType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRoamingState()Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->acquireTelephonyService()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->getRoamingState(Z)Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    move-result-object v1

    sget-boolean v3, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getRoamingState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - roamingState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method protected onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier$1;-><init>(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;)V

    return-object v0
.end method
