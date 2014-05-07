.class Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 963
    if-eqz p2, :cond_3

    .line 964
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1000(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 969
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1100(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 970
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 971
    const-string v1, "AccessibilitySettings"

    const-string v2, "onBeforeCheckedChanged, ignore it since fragment is pasued"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    :goto_0
    return v0

    .line 976
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 977
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 978
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1200(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 1002
    goto :goto_0

    .line 983
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1300(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 988
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1100(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 989
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 990
    const-string v1, "AccessibilitySettings"

    const-string v2, "onBeforeCheckedChanged, ignore it since fragment is pasued"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 996
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 1000
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1200(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
