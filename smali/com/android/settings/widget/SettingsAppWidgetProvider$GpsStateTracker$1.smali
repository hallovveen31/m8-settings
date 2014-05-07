.class Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    .line 850
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "[GpsStateTracker] requestStateChange() AsyncTask() doInBackground() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GpsStateTracker] requestStateChange() AsyncTask() desiredState1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->handleGPS(Landroid/content/Context;ZZ)V

    .line 859
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GpsStateTracker] requestStateChange() AsyncTask() desiredState3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 861
    const-string v0, "[GpsStateTracker] requestStateChange() AsyncTask() doInBackground() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 864
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$desiredState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 852
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 860
    :cond_3
    const-string v0, "false"

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 847
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 869
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const-string v0, "[GpsStateTracker] requestStateChange() AsyncTask() onPostExecute() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 871
    if-eqz p1, :cond_3

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GpsStateTracker] requestStateChange() AsyncTask() result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 879
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 883
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 885
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    const-string v0, "[GpsStateTracker] requestStateChange() AsyncTask() onPostExecute() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 888
    :cond_1
    return-void

    .line 872
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 875
    :cond_3
    const-string v0, "[GpsStateTracker] requestStateChange() AsyncTask() result = null"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    goto :goto_1

    .line 879
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 847
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
