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

    .prologue
    .line 28
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

    .line 31
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 195
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "irda.action.IRDA_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "irda.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->getBaseState(I)Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    .line 132
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    check-cast v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    .line 133
    return-void
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, summary:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 143
    .local v0, checked:Ljava/lang/Boolean;
    sget-object v5, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$wireless$infrared$HtcInfraredState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 180
    const v4, 0x7f0c09ec

    .line 181
    .local v4, summaryResId:I
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #checked:Ljava/lang/Boolean;
    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 182
    .restart local v0       #checked:Ljava/lang/Boolean;
    const/4 v2, 0x1

    .line 186
    .local v2, enabled:Z
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 190
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v0, v5}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 191
    sget-object v5, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 192
    .end local v2           #enabled:Z
    .end local v4           #summaryResId:I
    :goto_2
    return-void

    .line 145
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/framework/flag/feature/HtcInfraredFeatureFlags;->supportInfraredEntry(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->setEnabled(Z)V

    .line 148
    :cond_0
    sget-object v5, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    goto :goto_2

    .line 151
    :pswitch_1
    const v4, 0x7f0c09e8

    .line 153
    .restart local v4       #summaryResId:I
    const/4 v2, 0x0

    .line 154
    .restart local v2       #enabled:Z
    goto :goto_0

    .line 157
    .end local v2           #enabled:Z
    .end local v4           #summaryResId:I
    :pswitch_2
    const v4, 0x7f0c09e9

    .line 158
    .restart local v4       #summaryResId:I
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #checked:Ljava/lang/Boolean;
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    .line 159
    .restart local v0       #checked:Ljava/lang/Boolean;
    const/4 v2, 0x1

    .line 160
    .restart local v2       #enabled:Z
    goto :goto_0

    .line 163
    .end local v2           #enabled:Z
    .end local v4           #summaryResId:I
    :pswitch_3
    const v4, 0x7f0c09ea

    .line 165
    .restart local v4       #summaryResId:I
    const/4 v2, 0x0

    .line 166
    .restart local v2       #enabled:Z
    goto :goto_0

    .line 169
    .end local v2           #enabled:Z
    .end local v4           #summaryResId:I
    :pswitch_4
    const v4, 0x7f0c09eb

    .line 170
    .restart local v4       #summaryResId:I
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #checked:Ljava/lang/Boolean;
    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 171
    .restart local v0       #checked:Ljava/lang/Boolean;
    const/4 v2, 0x1

    .line 177
    .restart local v2       #enabled:Z
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 143
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

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    check-cast v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;)V

    .line 100
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v2, "irda.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "irda.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, state:I
    sget-boolean v2, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 78
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

    .line 80
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 82
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 1
    .parameter "newState"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 62
    const-string v0, "irda.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    return-void
.end method
