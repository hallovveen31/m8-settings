.class public abstract Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.super Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;
.source "HtcAbsWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;
.implements Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;
.implements Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_65:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$1;,
        Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;,
        Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;,
        Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;,
        Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;",
        ">",
        "Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;",
        "Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;",
        "Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;",
        "Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;",
        "Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEBUG_SECURE:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field protected static final WIDGET_ACTION_FLAG_SET_LISTITEM_GRAY_OUT_MASK:I = 0xf

.field protected static final WIDGET_ACTION_FLAG_SET_LISTITEM_GRAY_OUT_SHIFT:I = 0x0

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_CLICKABLE_MASK:I = 0xf0

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_CLICKABLE_SHIFT:I = 0x4

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_ENABLED_MASK:I = 0xf00

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_ENABLED_SHIFT:I = 0x8

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_TOGGLED_MASK:I = 0xf000

.field protected static final WIDGET_ACTION_FLAG_SET_SWITCH_TOGGLED_SHIFT:I = 0xc

.field protected static final WIDGET_ACTION_SET_NEGATIVE_FLAG:I = 0x1

.field protected static final WIDGET_ACTION_SET_POSITIVE_FLAG:I = 0x2

.field protected static final WIDGET_ACTION_UNSET_FLAG:I


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mAlertDialogState:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field private mIsEnablerActive:Z

.field private volatile mIsFinishingOrFinished:Z

.field protected mNonUiHandler:Landroid/os/Handler;

.field private mOnDialogCreatedListener:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;

.field protected mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private mUiHandler:Landroid/os/Handler;

.field private mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v2, 0x0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 68
    iput-boolean v2, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsFinishingOrFinished:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    .line 223
    iput-object p1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setAllowQueue(Z)V

    .line 231
    return-void
.end method

.method private bindHeaderViewInBackground(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 466
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getSubTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->setViewName(Ljava/lang/String;)V

    .line 467
    iput-object p1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 468
    invoke-virtual {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindToggleButtonInBackground(Lcom/android/settings/framework/widget/HtcToggleButton;)V

    .line 469
    return-void
.end method

.method private bindToggleButtonInBackground(Lcom/android/settings/framework/widget/HtcToggleButton;)V
    .locals 3
    .parameter "toggleButton"

    .prologue
    .line 514
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v0, 0x0

    .line 518
    .local v0, rebound:Z
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eq v1, p1, :cond_0

    .line 519
    const/4 v0, 0x1

    .line 522
    :cond_0
    sget-boolean v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToggleButtonInBackground(...)\n - rebound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 527
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    .line 528
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 529
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V

    .line 530
    iput-object p1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 532
    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onRebindViewInBackground()V

    .line 535
    :cond_2
    return-void
.end method

.method private decodeBooleanState(I)Ljava/lang/Boolean;
    .locals 2
    .parameter "code"

    .prologue
    .line 1280
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 1287
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1282
    :pswitch_0
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 1284
    :pswitch_1
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeBooleanState(Ljava/lang/Boolean;)I
    .locals 1
    .parameter "booleanState"

    .prologue
    .line 1265
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    if-nez p1, :cond_0

    .line 1266
    const/4 v0, 0x0

    .line 1270
    :goto_0
    return v0

    .line 1267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    const/4 v0, 0x2

    goto :goto_0

    .line 1270
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interruptUiMessagesOnDestroy()V
    .locals 2

    .prologue
    .line 364
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsFinishingOrFinished:Z

    .line 365
    sget-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyInBackground()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - mIsFinishingOrFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsFinishingOrFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1357
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 1358
    return-void
.end method

.method private final logE(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1365
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 1366
    return-void
.end method

.method private final logW(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1361
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->w(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 1362
    return-void
.end method

.method private onActivateEnablerInBackground()V
    .locals 2

    .prologue
    .line 430
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivateEnablerInBackground()\n - this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    .line 441
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mState:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V

    .line 444
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindIntentStreamListener(Lcom/android/settings/framework/receiver/HtcAbsBufferedReceiver$HtcIntentStreamListener;)V

    .line 445
    return-void
.end method

.method private final onHandleUiMessage(Landroid/os/Message;Ljava/lang/Object;)Z
    .locals 11
    .parameter "msg"
    .parameter "arg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v10, 0x1

    .line 1057
    iget-object v3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 1058
    .local v3, itemView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    iget-object v5, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 1060
    .local v5, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    sget-boolean v7, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v7, ">> onHandleUiMessage(...)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    if-eqz v3, :cond_3

    .line 1071
    const-string v7, "\n - mView: not null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - mView-name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getViewName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - mView:summary: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1082
    :goto_1
    const-string v7, "\n - mToggleButton: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - msg.what: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->values()[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - msg.obj: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - msg.arg1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->decodeBooleanState(I)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - msg.arg2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->decodeBooleanState(I)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 1091
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsFinishingOrFinished:Z

    if-eqz v7, :cond_4

    .line 1092
    sget-boolean v7, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1093
    const-string v7, "The enabler is finising or finished. No need to refresh UI."

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 1189
    .end local p2
    :cond_1
    :goto_2
    return v10

    .line 1071
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local p2
    :cond_2
    const-string v7, "null"

    goto :goto_0

    .line 1079
    :cond_3
    const-string v7, "\n - mView: null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1099
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_4
    sget-object v7, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$HtcAbsWidgetEnabler$WidgetActionType:[I

    invoke-static {}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->values()[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1186
    .end local p2
    :cond_5
    :goto_3
    sget-boolean v7, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1187
    const-string v7, "<< onHandleUiMessage(...)"

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1101
    .restart local p2
    :pswitch_0
    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    .line 1102
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->setEnabled(Z)V

    goto :goto_3

    .line 1107
    .restart local p2
    :pswitch_1
    if-eqz v3, :cond_5

    .line 1108
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1113
    .restart local p2
    :pswitch_2
    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    .line 1114
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 1116
    .local v2, icon:Landroid/widget/ImageView;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v2, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetIconColorInForeground(Landroid/widget/ImageView;Z)V

    goto :goto_3

    .line 1122
    .end local v2           #icon:Landroid/widget/ImageView;
    .restart local p2
    :pswitch_3
    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    .line 1123
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_3

    .line 1128
    .restart local p2
    :pswitch_4
    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    .line 1129
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1131
    .local v6, toggled:Z
    invoke-virtual {v5, v6}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 1134
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->supportIconFilterEffect()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1135
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetIconColorInForeground(Landroid/widget/ImageView;Z)V

    goto :goto_3

    .end local v6           #toggled:Z
    .restart local p2
    :pswitch_5
    move-object v4, p2

    .line 1143
    check-cast v4, Ljava/lang/CharSequence;

    .line 1144
    .local v4, summary:Ljava/lang/CharSequence;
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->decodeBooleanState(I)Ljava/lang/Boolean;

    move-result-object v6

    .line 1145
    .local v6, toggled:Ljava/lang/Boolean;
    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->decodeBooleanState(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 1147
    .local v1, enabled:Ljava/lang/Boolean;
    if-eqz v3, :cond_6

    .line 1150
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1153
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    :cond_6
    :goto_4
    if-eqz v5, :cond_5

    .line 1160
    if-eqz v6, :cond_7

    .line 1161
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 1164
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->supportIconFilterEffect()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1165
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetIconColorInForeground(Landroid/widget/ImageView;Z)V

    .line 1171
    :cond_7
    if-eqz v1, :cond_5

    .line 1172
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1155
    :cond_8
    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1178
    .end local v1           #enabled:Ljava/lang/Boolean;
    .end local v4           #summary:Ljava/lang/CharSequence;
    .end local v6           #toggled:Ljava/lang/Boolean;
    :pswitch_6
    check-cast p2, Lcom/htc/widget/HtcAlertDialog$Builder;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1179
    iget-object v7, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mOnDialogCreatedListener:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;

    if-eqz v7, :cond_5

    .line 1180
    iget-object v7, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mOnDialogCreatedListener:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;

    iget-object v8, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-interface {v7, v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;->onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V

    goto/16 :goto_3

    .line 1099
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setWidgetStatusImmediately(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V
    .locals 4
    .parameter "actionType"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 949
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 950
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWidgetStatusImmediately() should be called from the UI thread\n - Process ID (PID): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - Thread ID (TID): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    if-nez v1, :cond_2

    .line 958
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 959
    const-string v1, "The enabler is still inactive. You can\'t use the UI handler."

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logW(Ljava/lang/String;)V

    .line 978
    :cond_1
    :goto_0
    return-void

    .line 965
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 966
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v2

    new-instance v3, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 973
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 976
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "Could not find the UI handler to set the widget."

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unbindHeaderViewInBackground()V
    .locals 2

    .prologue
    .line 486
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 488
    .local v0, view:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindToggleButtonInBackground()V

    .line 492
    :cond_0
    return-void
.end method

.method private unbindToggleButtonInBackground()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v2, 0x0

    .line 553
    sget-boolean v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 554
    const-string v1, "unbindToggleButtonInBackground(...)"

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 559
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    iput-object v2, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 560
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    .line 562
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 563
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V

    .line 565
    :cond_1
    return-void
.end method


# virtual methods
.method public final bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 455
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public final bindToggleButton(Lcom/android/settings/framework/widget/HtcToggleButton;)V
    .locals 1
    .parameter "toggleButton"

    .prologue
    .line 502
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method public createDialog(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 1327
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    if-nez p1, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->CREATE_ALERT_DIALOG:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1338
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find the UI handler to create a dialog with the builder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAlertDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1353
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method public final isEnablerActive()Z
    .locals 1

    .prologue
    .line 404
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    return v0
.end method

.method public final isWidgetChecked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 762
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 765
    :cond_0
    const-string v0, "mToggleButton are not bound!!"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final isWidgetEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 673
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 680
    :cond_1
    const-string v0, "mView or mToggleButton are not bound!!"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final isWidgetToggled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 781
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->isWidgetChecked()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final onActivateEnabler()V
    .locals 2

    .prologue
    .line 416
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    .line 417
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_ACTIVATE_ENABLER:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 623
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    return-void
.end method

.method public final onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 608
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    move-object v0, p1

    check-cast v0, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V

    .line 611
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_CHECKED_CHANGED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public onCheckedChangedInBackground(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 632
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 338
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->interruptUiMessagesOnDestroy()V

    .line 339
    return-void
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->interruptUiMessagesOnDestroy()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindIntentStreamListener()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V

    .line 331
    :cond_0
    iput-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 332
    iput-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 333
    iput-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 334
    return-void
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 815
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iput-object p2, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    .line 816
    iput-object p3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mNonUiHandler:Landroid/os/Handler;

    .line 817
    return-void
.end method

.method public onEnabledChange(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 594
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v1, 0x0

    .line 1195
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v1

    .line 1200
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 1203
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 1207
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onHandleNonUiMessage(Landroid/os/Message;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Ljava/lang/Object;)Z
    .locals 5
    .parameter "msg"
    .parameter "arg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v4, 0x1

    .line 1219
    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$1;->$SwitchMap$com$android$settings$framework$core$HtcAbsWidgetEnabler$InternalActionType:[I

    invoke-static {}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->values()[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1256
    .end local p2
    :goto_0
    return v4

    .line 1221
    .restart local p2
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnablerInBackground()V

    goto :goto_0

    .line 1225
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, v1, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1229
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderViewInBackground(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto :goto_0

    .line 1234
    .restart local p2
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderViewInBackground()V

    goto :goto_0

    .line 1238
    :pswitch_4
    check-cast p2, Lcom/android/settings/framework/widget/HtcToggleButton;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindToggleButtonInBackground(Lcom/android/settings/framework/widget/HtcToggleButton;)V

    goto :goto_0

    .line 1242
    .restart local p2
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindToggleButtonInBackground()V

    goto :goto_0

    .line 1246
    :pswitch_6
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .line 1247
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onCheckedChangedInBackground(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V

    goto :goto_0

    .line 1252
    .end local v0           #args:[Ljava/lang/Object;
    .restart local p2
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChangeInBackground(Z)V

    goto :goto_0

    .line 1219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    .local p1, state:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;,"TT;"
    return-void
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v1, 0x0

    .line 1033
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v1

    .line 1038
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 1041
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 1045
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onHandleUiMessage(Landroid/os/Message;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onIntentReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 253
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_RECEIVE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 302
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 303
    sget-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPauseInBackground(): \n - this.mAlertDialog.isShowing():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialogState:Landroid/os/Bundle;

    .line 311
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialogState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected abstract onRebindViewInBackground()V
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 280
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialogState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 281
    sget-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResumeInBackground(): \n - this.mAlertDialogState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialogState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mAlertDialogState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 289
    :cond_1
    return-void
.end method

.method public onToggleChange(Z)Z
    .locals 2
    .parameter "newState"

    .prologue
    .line 575
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_TOGGLE_CHANGE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 590
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    return-void
.end method

.method protected postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V
    .locals 3
    .parameter "actionType"
    .parameter "argument"

    .prologue
    .line 828
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    const-string v0, "Could not find the non-UI handler to set the switch"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract setIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method public setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1318
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iput-object p1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mOnDialogCreatedListener:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;

    .line 1319
    return-void
.end method

.method public final setSwitchEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 743
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 748
    :cond_0
    return-void
.end method

.method public final setWidgetChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 791
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 792
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_TOGGLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 795
    :cond_0
    return-void
.end method

.method public final setWidgetEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 695
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v0, :cond_1

    .line 697
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setWidgetEnabledImmediately(Z)V
    .locals 2
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 725
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v0, :cond_1

    .line 727
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatusImmediately(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    .line 731
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatusImmediately(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final setWidgetIconColor(Z)V
    .locals 4
    .parameter "toggled"

    .prologue
    .line 849
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    if-nez v0, :cond_1

    .line 850
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "The enabler is still inactive. You can\'t use the UI handler."

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logW(Ljava/lang/String;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->supportIconFilterEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_ICON_COLOR_FILTER_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 869
    :cond_2
    const-string v0, "Could not find the UI handler to set the icon color"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setWidgetIconColorInForeground(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "icon"
    .parameter "toggled"

    .prologue
    .line 884
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-boolean v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWidgetIconColorInForeground(..., "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->log(Ljava/lang/String;)V

    .line 887
    :cond_0
    if-eqz p1, :cond_1

    .line 888
    check-cast p1, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    .end local p1
    invoke-virtual {p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/framework/widget/HtcColorFilterImageView;->setColorFilterEnabled(Landroid/content/Context;Z)V

    .line 891
    :cond_1
    return-void
.end method

.method protected setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "summaryResId"
    .parameter "toggled"
    .parameter "toggleButtonEnabled"

    .prologue
    .line 992
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 994
    return-void
.end method

.method protected setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V
    .locals 3
    .parameter "actionType"
    .parameter "argument"

    .prologue
    .line 903
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    if-nez v0, :cond_1

    .line 904
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 905
    const-string v0, "The enabler is still inactive. You can\'t use the UI handler."

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logW(Ljava/lang/String;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 918
    :cond_2
    const-string v0, "Could not find the UI handler to set the switch"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "summary"
    .parameter "toggled"
    .parameter "toggleButtonEnabled"

    .prologue
    .line 1008
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-boolean v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mIsEnablerActive:Z

    if-nez v0, :cond_1

    .line 1009
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "The enabler is still inactive. You can\'t use the UI handler."

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logW(Ljava/lang/String;)V

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mUiHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_MULTI_PROPERTIES:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->ordinal()I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->encodeBooleanState(Ljava/lang/Boolean;)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->encodeBooleanState(Ljava/lang/Boolean;)I

    move-result v3

    new-instance v4, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1025
    :cond_2
    const-string v0, "Could not find the UI handler to set the switch"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setWidgetSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 639
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    .line 644
    :cond_0
    return-void
.end method

.method public final setWidgetSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 651
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v0, :cond_0

    .line 652
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_SUMMARY:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;Ljava/lang/Object;)V

    .line 655
    :cond_0
    return-void
.end method

.method public final setWidgetToggled(Z)V
    .locals 0
    .parameter "toggled"

    .prologue
    .line 804
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetToggled(Z)V

    .line 805
    return-void
.end method

.method protected supportIconFilterEffect()Z
    .locals 1

    .prologue
    .line 389
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final unbindHeaderView()V
    .locals 2

    .prologue
    .line 477
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public final unbindToggleButton()V
    .locals 2

    .prologue
    .line 543
    .local p0, this:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;,"Lcom/android/settings/framework/core/HtcAbsWidgetEnabler<TT;>;"
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->postInternalAction(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;Ljava/lang/Object;)V

    .line 546
    return-void
.end method
