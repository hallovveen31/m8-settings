.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiDisplayInvocator.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->TAG:Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "HtcRmiDisplayInvocator"

    invoke-static {v0}, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->log(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public setAutoRotationStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, result:Z
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, status:Z
    const-string v3, "extra_status"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    move v0, v2

    .line 69
    .local v0, autoRotate:Z
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p1, v3}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 72
    sget-boolean v3, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoRotationStatus:autoRotate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->log(Ljava/lang/String;)V

    .line 78
    .end local v0           #autoRotate:Z
    .end local v2           #status:Z
    :cond_0
    const-string v3, "extra_successful"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    return-void

    .line 69
    .restart local v0       #autoRotate:Z
    .restart local v2       #status:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBrightnessAutomaticModeStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 120
    .local v0, automaticMode:Z
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-static {p1, v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    move-result v1

    .line 128
    .end local v0           #automaticMode:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setBrightnessStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, brightness:I
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z

    move-result v1

    .line 103
    .end local v0           #brightness:I
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method
