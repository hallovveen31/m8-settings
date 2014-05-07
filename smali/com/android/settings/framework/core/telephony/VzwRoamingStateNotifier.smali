.class public Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
.super Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;
.source "VzwRoamingStateNotifier.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


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

    .prologue
    .line 39
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

    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/HtcAbsRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 5
    .parameter "intent"

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 195
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :cond_1
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, stateName:Ljava/lang/String;
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 173
    .local v1, state:Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_0

    .line 174
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 177
    .local v0, dataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v3, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 180
    goto :goto_0

    .line 183
    :pswitch_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 184
    goto :goto_0

    .line 187
    :pswitch_2
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    .line 188
    goto :goto_0

    .line 191
    :pswitch_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 177
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
    .parameter "ss"
    .parameter "type"

    .prologue
    .line 244
    const/4 v4, 0x0

    .line 246
    .local v4, ret:Z
    if-eqz p1, :cond_2

    .line 247
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    if-eqz v0, :cond_1

    .line 259
    :try_start_1
    const-string v5, "getVoiceRoaming"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    .line 260
    const-string v5, "getDataRoaming"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-nez p2, :cond_4

    .line 267
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetVoiceRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    .line 269
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

    .line 289
    :cond_2
    :goto_2
    return v4

    .line 252
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 253
    .local v1, ef:Ljava/lang/Exception;
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

    .line 261
    .end local v1           #ef:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 262
    .local v3, es:Ljava/lang/Exception;
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

    .line 270
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #es:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 271
    .local v2, ei:Ljava/lang/Exception;
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

    .line 274
    .end local v2           #ei:Ljava/lang/Exception;
    :cond_3
    const-string v5, "VzwRoamingStateNotifier"

    const-string v6, "mGetVoiceRoaming is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    :cond_4
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 277
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mGetDataRoaming:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_5

    .line 279
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

    .line 280
    :catch_3
    move-exception v2

    .line 281
    .restart local v2       #ei:Ljava/lang/Exception;
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

    .line 284
    .end local v2           #ei:Ljava/lang/Exception;
    :cond_5
    const-string v5, "VzwRoamingStateNotifier"

    const-string v6, "mGetDataRoaming is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 91
    const-string v2, ">> onReceive(...)"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/content/Intent;)V

    .line 96
    :cond_0
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 128
    .local v1, state:Landroid/net/NetworkInfo$State;
    const-string v2, "apnType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, capability:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    sget-object v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 141
    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "onReceive():mobileData: not connected"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->notifyChange()V

    .line 154
    .end local v0           #capability:Ljava/lang/String;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :goto_1
    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "<< onReceive(...)"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    .line 157
    :cond_2
    return-void

    .line 135
    .restart local v0       #capability:Ljava/lang/String;
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    .line 136
    sget-boolean v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 137
    const-string v2, "onReceive():mobileData: connected"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    const-string v2, "onReceive():mobileData: not include the default APN type"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .end local v0           #capability:Ljava/lang/String;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
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

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->notifyChange()V

    .line 235
    return-void
.end method


# virtual methods
.method protected getPhoneStateEventType()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public getRoamingState()Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v5, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mServiceState:Landroid/telephony/ServiceState;

    .line 297
    .local v5, serviceState:Landroid/telephony/ServiceState;
    iget-boolean v2, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mIsMobileDataConnected:Z

    .line 299
    .local v2, isMobileDataConnected:Z
    if-nez v5, :cond_4

    move v3, v1

    .line 301
    .local v3, isVoiceRoaming:Z
    :goto_0
    if-nez v5, :cond_5

    .line 304
    .local v1, isDataRoaming:Z
    :goto_1
    sget-object v4, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 306
    .local v4, roamingState:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    sget-boolean v7, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, builder:Ljava/lang/StringBuilder;
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

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    .line 322
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    if-nez v2, :cond_1

    .line 323
    const/4 v1, 0x0

    .line 328
    :cond_1
    if-nez v5, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->acquireTelephonyService()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 331
    .local v6, tm:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_2

    .line 332
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    sget-object v4, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 341
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_2
    sget-boolean v7, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .restart local v0       #builder:Ljava/lang/StringBuilder;
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

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->log(Ljava/lang/String;)V

    .line 352
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_3
    return-object v4

    .line 299
    .end local v1           #isDataRoaming:Z
    .end local v3           #isVoiceRoaming:Z
    .end local v4           #roamingState:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->isRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v3

    goto/16 :goto_0

    .line 301
    .restart local v3       #isVoiceRoaming:Z
    :cond_5
    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->isRoaming(Landroid/telephony/ServiceState;I)Z

    move-result v1

    goto/16 :goto_1

    .line 337
    .restart local v1       #isDataRoaming:Z
    .restart local v4       #roamingState:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_6
    invoke-static {v3, v1}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->getRoamingState(ZZ)Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    move-result-object v4

    goto :goto_2
.end method

.method protected onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;-><init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)V

    return-object v0
.end method

.method protected onCreateRegister(Landroid/content/Context;)Lcom/android/settings/framework/content/HtcIRegister;
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;-><init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;)V

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->getRegister()Lcom/android/settings/framework/content/HtcIRegister;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->unregister()V

    .line 206
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->getRegister()Lcom/android/settings/framework/content/HtcIRegister;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/content/HtcIRegister;->register()V

    .line 201
    return-void
.end method
