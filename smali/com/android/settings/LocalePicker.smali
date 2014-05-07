.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalLocalePickerFragment;-><init>()V

    .line 41
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0c02e4

    return v0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method
