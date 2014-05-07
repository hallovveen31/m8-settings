.class public Lcom/android/settings/inputmethod/SpellCheckersPreference;
.super Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;
.source "SpellCheckersPreference.java"


# instance fields
.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "textservices"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 31
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->setChecked(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onCheckBoxClicked()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onCheckBoxClicked()V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->isChecked()Z

    move-result v0

    .line 38
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 39
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 4
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 44
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 45
    .local v0, db_value:Z
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 46
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, key:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 48
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 51
    return-void
.end method
