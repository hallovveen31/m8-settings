.class Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

.field final synthetic val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Lcom/htc/preference/HtcCheckBoxPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    #getter for: Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method
