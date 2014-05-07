.class Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;
.super Ljava/lang/Object;
.source "HtcInputMethodPreference.java"

# interfaces
.implements Lcom/android/settings/inputmethod/HtcToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/HtcInputMethodPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/inputmethod/HtcToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return v3

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setChecked(Z)V

    .line 78
    invoke-virtual {p1, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mIsSystemIme:Z
    invoke-static {v0}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->access$000(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setChecked(Z)V

    .line 82
    invoke-virtual {p1, v3}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->access$100(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    #calls: Lcom/android/settings/inputmethod/HtcInputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->access$200(Lcom/android/settings/inputmethod/HtcInputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V

    goto :goto_0
.end method
