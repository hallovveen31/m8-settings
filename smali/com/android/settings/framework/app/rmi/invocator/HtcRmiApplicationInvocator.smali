.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiApplicationInvocator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnknownSourcesStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, status:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 70
    :goto_0
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0
.end method

.method public getUnknownSourcesVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getUnknownSourcesVisibility(Landroid/content/Context;)Z

    move-result v0

    .line 40
    .local v0, visible:Z
    const-string v1, "extra_visibility"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v1, "extra_successful"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;->TAG:Ljava/lang/String;

    const-string v1, "The intent has arrived the HtcRmiApplicationSetter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public setUnknownSourcesStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .local v1, status:Z
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 92
    .end local v1           #status:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-void

    .line 85
    .restart local v1       #status:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUnknownSourcesVisibility(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, result:Z
    const-string v2, "extra_visibility"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "extra_visibility"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 52
    .local v1, visible:Z
    const-string v2, "extra_visibility"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-static {p1, v1}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->setUnknownSourcesVisibility(Landroid/content/Context;Z)Z

    move-result v0

    .line 57
    .end local v1           #visible:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
