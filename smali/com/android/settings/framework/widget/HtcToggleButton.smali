.class public Lcom/android/settings/framework/widget/HtcToggleButton;
.super Lcom/htc/widget/HtcToggleButtonLight;
.source "HtcToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;,
        Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

.field private mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcToggleButton;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcToggleButton;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;->onEnabledChange(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnEnabledChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;

    return-void
.end method

.method public setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/settings/framework/widget/HtcToggleButton;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Landroid/os/MessageQueue;)V

    sget-object v2, Lcom/android/settings/framework/widget/HtcToggleButton;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/android/settings/framework/widget/HtcToggleButton;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The toogle-button had been disabled, but the toogle() was still triggered by a touch-event.\n - enabled state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - current-checked state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - next-checked state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcToggleButton;->mOnToggleChangeListener:Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-interface {v2, v0}, Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;->onToggleChange(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    invoke-super {p0}, Lcom/htc/widget/HtcToggleButtonLight;->toggle()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
