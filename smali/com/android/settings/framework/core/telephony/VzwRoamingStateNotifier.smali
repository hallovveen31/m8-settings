.class public Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
.super Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;
.source "VzwRoamingStateNotifier.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$3;
    }
.end annotation


# static fields
.field private static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VzwRoamingStateNotifier"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGetDataRoaming:Ljava/lang/reflect/Method;

.field private mGetVoiceRoaming:Ljava/lang/reflect/Method;

.field private mIsMobileDataConnected:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private final mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 5

    if-nez p1, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    sget-object v3, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isRoaming(Landroid/telephony/ServiceState;I)Z
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    const-string v5, "getVoiceRoaming"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    const-string v5, "getDataRoaming"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-nez p2, :cond_4

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    :try_start_2
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    :cond_2
    :goto_2
    return v4

    :catch_0
    move-exception v1

    const-string v5, "VzwRoamingStateNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find Class fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "VzwRoamingStateNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find getVoiceRoaming/getDataRoaming method fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v5, "VzwRoamingStateNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke getVoiceRoaming method fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v5, "VzwRoamingStateNotifier"

    const-string v6, "mGetVoiceRoaming is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_5

    :try_start_3
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_2

    :catch_3
    move-exception v2

    const-string v5, "VzwRoamingStateNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke getDataRoaming method fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string v5, "VzwRoamingStateNotifier"

    const-string v6, "mGetDataRoaming is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, ">> onReceive(...)"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v1

    const-string v2, "apnType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "onReceive():mobileData: not connected"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->notifyChange()V

    :goto_1
    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "<< onReceive(...)"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "onReceive():mobileData: connected"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "onReceive():mobileData: not include the default APN type"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

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
    .locals 9

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

    iget-boolean v2, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    if-nez v5, :cond_4

    move v3, v1

    :goto_0
    if-nez v5, :cond_5

    :goto_1
    sget-object v4, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    sget-boolean v7, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "getRoamingStatus():before:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - serviceState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - isVoiceRoaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - isDataRoaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - isMobileDataConnected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->acquireTelephonyService()Landroid/telephony/TelephonyManager;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v4, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    :cond_2
    :goto_2
    sget-boolean v7, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getRoamingStatus():after:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - isDataRoaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - roamingState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->log(Ljava/lang/String;)V

    :cond_3
    return-object v4

    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->isRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v3

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->isRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v1

    goto/16 :goto_1

    :cond_6
    invoke-static {v3, v1}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->getRoamingState(ZZ)Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    move-result-object v4

    goto :goto_2
.end method

.method protected onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;-><init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)V

    return-object v0
.end method

.method protected onCreateRegister(Landroid/content/Context;)Lcom/android/settings/framework/content/HtcIRegister;
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;-><init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;)V

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getRegister()Lcom/android/settings/framework/content/HtcIRegister;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->unregister()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;->getRegister()Lcom/android/settings/framework/content/HtcIRegister;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->register()V

    return-void
.end method
