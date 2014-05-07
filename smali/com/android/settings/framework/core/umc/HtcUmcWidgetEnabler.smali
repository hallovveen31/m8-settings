.class public Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcUmcWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/umc/HtcUmcState;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HTC_UNIVERSAL_MUSIC_CHANNEL:Ljava/lang/String; = "htc_universal_music_channel"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUmcState:Z

.field private mUmcStateUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    return-void
.end method

.method public static isSupportMusicChannel()Z
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    const-string v3, "System"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "support_music_channel"

    invoke-virtual {v1, v3, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    sget-object v3, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportMusicChannel(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryUmcState()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v2, "queryUmcState() error: mContext==null"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_universal_music_channel"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    if-ne v4, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sget-boolean v2, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUmcState() value=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setUmcStateInDb(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_universal_music_channel"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUmcStateInDb() value=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/umc/HtcUmcState;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcState:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/umc/HtcUmcState;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/umc/HtcUmcState;)V

    goto :goto_0
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/umc/HtcUmcState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/umc/HtcUmcState;
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcState:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDefaultState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

    goto :goto_0
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0

    check-cast p1, Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/umc/HtcUmcState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/umc/HtcUmcState;)V
    .locals 4

    const v3, 0x7f0c0113

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleStateChangedInBackground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$umc$HtcUmcState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "STATE_INIT"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->queryUmcState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcState:Z

    iput-boolean v2, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->updateUI()V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "STATE_ON"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "STATE_OFF"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRebindViewInBackground()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onRebindViewInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->updateUI()V

    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResumeInBackground()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->updateUI()V

    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToggleChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChange(Z)Z

    move-result v0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    const-string v1, "Response Time (Turn on Beats audio)"

    :goto_0
    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherStart(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcState:Z

    iput-boolean v3, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->updateUI()V

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->setUmcStateInDb(Z)V

    iget-object v2, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "onToggleChangeInBackground() error: mContext==null"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "Response Time (Turn off Beats audio)"

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.musicenhancer.action.UNIVERSAL_MUSIC_CHANNEL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcState:Z

    iput-boolean v3, p0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->mUmcStateUpdated:Z

    invoke-direct {p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->updateUI()V

    invoke-direct {p0, v4}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->setUmcStateInDb(Z)V

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    return-void
.end method
