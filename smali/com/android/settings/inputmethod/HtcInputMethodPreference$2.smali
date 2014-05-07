.class Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;
.super Ljava/lang/Object;
.source "HtcInputMethodPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/HtcInputMethodPreference;->saveImeSettings()V
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
    .line 330
    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    iget-object v2, v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    iget-object v1, v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->access$300(Lcom/android/settings/inputmethod/HtcInputMethodPreference;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcInputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    iget-object v1, v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    return-void

    .line 334
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
