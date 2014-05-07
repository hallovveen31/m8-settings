.class Lcom/android/settings/DevelopmentSettings$1$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DevelopmentSettings$1;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$1$1;->this$1:Lcom/android/settings/DevelopmentSettings$1;

    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings$1$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings$1$1;->val$b:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$1$1;->this$1:Lcom/android/settings/DevelopmentSettings$1;

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    #getter for: Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const v1, 0x7f0c117d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$1$1;->this$1:Lcom/android/settings/DevelopmentSettings$1;

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    #getter for: Lcom/android/settings/DevelopmentSettings;->mPassword:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const v1, 0x7f0c117c

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
