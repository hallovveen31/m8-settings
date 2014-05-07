.class public Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcImsServiceStatePreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final IMS_STATE_INTENT:Ljava/lang/String; = "com.htc.intent.action.IMS_SERVICE_STATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mImsRegistered:Z

.field private mImsServiceState:Ljava/lang/String;

.field private mImsStateFilter:Landroid/content/IntentFilter;

.field private final mImsStateReceiver:Landroid/content/BroadcastReceiver;

.field private mVolteEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "NOT_REGISTERED"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    .line 136
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;-><init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string v0, "NOT_REGISTERED"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    .line 136
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;-><init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-string v0, "NOT_REGISTERED"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    .line 136
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference$1;-><init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->checkimsStateReceiverIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getSummaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkimsStateReceiverIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v1, "com.htc.intent.action.IMS_SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v2, "mImsStateReceiver - ACTION_IMS_SERVICE_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSummaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "imsServiceState"

    .prologue
    .line 161
    const v0, 0x7f0c06f2

    .line 162
    .local v0, state:I
    const-string v2, "REGISTERED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const v0, 0x7f0c06f1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, summary:Ljava/lang/String;
    return-object v1
.end method

.method private getSummaryString(Z)Ljava/lang/String;
    .locals 3
    .parameter "imsRegistered"

    .prologue
    .line 172
    const v0, 0x7f0c06f2

    .line 173
    .local v0, state:I
    if-eqz p1, :cond_0

    .line 174
    const v0, 0x7f0c06f1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, summary:Ljava/lang/String;
    return-object v1
.end method

.method private initial(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v1, "initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.IMS_SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateFilter:Landroid/content/IntentFilter;

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c06f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsServiceState:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getSummaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getSummaryString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/android/settings/WrapCustomizationManager;->getPhoneReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v1

    const-string v2, "voLteEnabled"

    invoke-static {v1, v2, v0}, Lcom/android/settings/WrapCustomizationReader;->readBoolean(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->initial(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onPauseInBackground(Landroid/app/Activity;)V

    .line 100
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v2, "onPauseInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onResumeInBackground(Landroid/app/Activity;)V

    .line 72
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 73
    sget-object v4, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v5, "onResumeInBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mVolteEnabled:Z

    if-eqz v4, :cond_2

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsStateFilter:Landroid/content/IntentFilter;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v3

    .line 79
    .local v3, imsStateIntent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 80
    sget-object v4, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v5, "onResumeInBackground imsStateIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->checkimsStateReceiverIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3           #imsStateIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    const-string v5, "Unable to register receiver"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v2

    .line 88
    .local v2, htcTMgr:Lcom/htc/telephony/HtcTelephonyManager;
    const-string v4, "getIMSregistered"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, bresult:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 90
    const-string v4, "getIMSregistered"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    .line 92
    :cond_3
    sget-object v4, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ims registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->mImsRegistered:Z

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->getSummaryString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
