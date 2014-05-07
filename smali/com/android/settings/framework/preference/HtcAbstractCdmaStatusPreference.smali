.class public abstract Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcAbstractCdmaStatusPreference.java"


# static fields
.field private static final CHUNK_3:I = 0x3

.field private static final CHUNK_4:I = 0x4

.field private static final SEPARATOR:C = ' '

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 123
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 123
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 123
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    return-object p1
.end method

.method public static formatting(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "target"

    .prologue
    const/16 v8, 0x20

    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 204
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 183
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 184
    .local v3, len:I
    rem-int/lit8 v4, v3, 0x3

    .line 185
    .local v4, remainder3:I
    rem-int/lit8 v5, v3, 0x4

    .line 186
    .local v5, remainder4:I
    if-gt v5, v4, :cond_3

    const/4 v0, 0x4

    .line 188
    .local v0, chunkLength:I
    :goto_1
    if-le v3, v0, :cond_0

    .line 192
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v6, sb:Ljava/lang/StringBuffer;
    rem-int v1, v3, v0

    .line 194
    .local v1, firstSplitLen:I
    if-eqz v1, :cond_2

    .line 195
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_2
    move v2, v1

    .local v2, i:I
    :goto_2
    sub-int v7, v3, v0

    if-gt v2, v7, :cond_4

    .line 199
    add-int v7, v2, v0

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    add-int/2addr v2, v0

    goto :goto_2

    .line 186
    .end local v0           #chunkLength:I
    .end local v1           #firstSplitLen:I
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    .line 201
    .restart local v0       #chunkLength:I
    .restart local v1       #firstSplitLen:I
    .restart local v2       #i:I
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 204
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private final getPhoneServiceAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 108
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v5, 0x40b0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_2

    const-string v0, "com.htc.permission.APP_PLATFORM"

    :goto_1
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 119
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnRegisterReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected canGetSummaryImmediately()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onGetSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetSummaryLater()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/app/HtcPhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request summary, PhoneTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->unregisterReceiver()V

    .line 91
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->isConstantSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->registerReceiver()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->updateSummary()V

    .line 99
    :cond_1
    return-void
.end method

.method protected final onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
