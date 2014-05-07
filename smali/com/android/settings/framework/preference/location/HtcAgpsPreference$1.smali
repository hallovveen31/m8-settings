.class Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcAgpsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->syncStateFromDataSourceInBackground()V

    .line 103
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver.onReceive(): action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 110
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v0, "com.htc.settings.action.SET_AGPS_ENABLED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    return-void
.end method
