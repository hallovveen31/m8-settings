.class public Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcInfraredWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_IRDA_CONTROL:Ljava/lang/String; = "irda.action.IRDA_CONTROL"

.field private static final ACTION_STATE_CHANGED:Ljava/lang/String; = "irda.action.STATE_CHANGED"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_STATE:Ljava/lang/String; = "irda.extra.STATE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "irda.action.IRDA_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "irda.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->getBaseState(I)Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    check-cast v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    return-void
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0

    check-cast p1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v5, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$wireless$infrared$HtcInfraredState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    const v4, 0x7f0c09ec

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v0, v5}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget-object v5, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;->supportInfraredEntry(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->setEnabled(Z)V

    :cond_0
    sget-object v5, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    goto :goto_2

    :pswitch_1
    const v4, 0x7f0c09e8

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    const v4, 0x7f0c09e9

    new-instance v0, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    const v4, 0x7f0c09ea

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_4
    const v4, 0x7f0c09eb

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    check-cast v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "irda.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "irda.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Irda Setting receive state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(I)V

    :cond_1
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "irda.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
