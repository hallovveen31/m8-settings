.class public Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;
.super Lcom/android/settings/framework/content/HtcBroadcastReceiver;
.source "HtcPluginReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/framework/content/HtcBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "uiHandler"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> onReceiveInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->log(Ljava/lang/String;)V

    .line 36
    :cond_0
    const-string v2, "com.htc.settings.ENTRY_DATA_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    sget-boolean v2, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->log(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    .line 66
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< onReceiveInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->log(Ljava/lang/String;)V

    .line 69
    :cond_3
    :goto_1
    return-void

    .line 42
    :cond_4
    new-instance v1, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;

    invoke-direct {v1, p2}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;-><init>(Landroid/content/Intent;)V

    .line 44
    .local v1, params:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
    sget-boolean v2, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 45
    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->log(Ljava/lang/String;)V

    .line 49
    :cond_5
    iget-object v2, v1, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluginable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 50
    sget-boolean v2, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< onReceiveInBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): not plugin-able"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/content/plugin/HtcPluginReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_6
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 58
    invoke-static {p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_7
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    invoke-static {p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_8
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-static {p1}, Lcom/android/settings/framework/activity/HtcEntryManager;->refresh(Landroid/content/Context;)V

    goto :goto_0
.end method
