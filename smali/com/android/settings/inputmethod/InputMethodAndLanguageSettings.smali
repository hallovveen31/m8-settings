.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z = false

.field private static final TAG:Ljava/lang/String; = "InputMethodAndLanguageSettings"

.field public static final mEnableProfilingLog:Z

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/HtcInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mLanguagePref:Lcom/htc/preference/HtcPreference;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "auto_replace"

    aput-object v3, v2, v0

    const-string v3, "auto_caps"

    aput-object v3, v2, v1

    const-string v3, "auto_punctuate"

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 78
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "auto_replace"

    aput-object v3, v2, v0

    const-string v3, "auto_caps"

    aput-object v3, v2, v1

    const-string v3, "auto_punctuate"

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    .line 105
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_0

    const-string v2, "profiler.performance"

    invoke-static {v2, v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnableProfilingLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 611
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/HtcInputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 479
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 482
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :goto_0
    new-instance v0, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;-><init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 492
    .local v0, pref:Lcom/android/settings/inputmethod/HtcInputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, v6}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    return-object v0

    .line 487
    .end local v0           #pref:Lcom/android/settings/inputmethod/HtcInputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "languageCode"
    .parameter "locales"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 414
    .local v4, localeCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 416
    add-int/lit8 v1, v1, 0x1

    .line 417
    if-le v1, v5, :cond_0

    .line 422
    .end local v4           #localeCode:Ljava/lang/String;
    :goto_1
    return v6

    .line 413
    .restart local v4       #localeCode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v4           #localeCode:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 601
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 602
    .local v1, devices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 603
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 604
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 608
    .end local v0           #device:Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 602
    .restart local v0       #device:Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 427
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, intValue:I
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0           #intValue:I
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showKeyboardLayoutDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 559
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, fragment:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    .line 455
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    instance-of v2, v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    if-eqz v2, :cond_0

    .line 456
    check-cast v1, Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/HtcInputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 460
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 464
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 466
    .local v2, curPref:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 469
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 588
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 591
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 593
    .local v0, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 598
    .end local v0           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :goto_1
    return-void

    .line 593
    .restart local v0       #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 596
    .end local v0           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 503
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 505
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 506
    .local v2, devices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 507
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 508
    .local v1, device:Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 511
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, inputDeviceDescriptor:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, keyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 517
    .local v6, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 518
    .local v8, pref:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    if-eqz v6, :cond_2

    .line 520
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    :goto_2
    new-instance v10, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 531
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #inputDeviceDescriptor:Ljava/lang/String;
    .restart local v7       #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 514
    goto :goto_1

    .line 522
    .restart local v6       #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .restart local v8       #pref:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    const v10, 0x7f0c0ff4

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 536
    .end local v1           #device:Landroid/view/InputDevice;
    .end local v2           #devices:[I
    .end local v3           #i:I
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 537
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_5

    .line 538
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    .line 539
    .local v8, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v8}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 540
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    move v4, v3

    .line 542
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 544
    .end local v4           #i:I
    .end local v8           #pref:Lcom/htc/preference/HtcPreference;
    .restart local v3       #i:I
    :cond_5
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 545
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    .local v0, count:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 547
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreference;

    .line 548
    .restart local v8       #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v8, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 549
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 552
    .end local v8           #pref:Lcom/htc/preference/HtcPreference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 556
    .end local v0           #count:I
    .end local v3           #i:I
    :goto_5
    return-void

    .line 554
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 500
    return-void
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, inputMethodSelectorTitles:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Lcom/htc/preference/HtcListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method getCustomizeDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "locale"
    .parameter "localeString"

    .prologue
    .line 638
    if-nez p1, :cond_1

    .line 652
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 642
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, aliasLocaleCodes:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, aliasLocaleNames:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, code:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 647
    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    aget-object p2, v1, v3

    goto :goto_0

    .line 646
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 577
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_descriptor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, inputDeviceDescriptor:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 583
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    .line 585
    .end local v0           #inputDeviceDescriptor:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 110
    sget-boolean v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnableProfilingLog:Z

    if-eqz v6, :cond_0

    .line 111
    const-string v6, "AutoTest"

    const-string v7, "[AutoProf](303) [LAUNCH_TIME][Language & keyboard][Response Time][START]"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v6, 0x7f06001f

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 118
    const v6, 0x7f0c0039

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const-string v7, "phone_language"

    invoke-virtual {p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    :goto_1
    new-instance v6, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v6}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 140
    const-string v6, "hard_keyboard"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 141
    const-string v6, "keyboard_settings_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 143
    const-string v6, "game_controller_settings_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 147
    const-string v6, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v6, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    :cond_1
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 161
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 163
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 171
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v6, :cond_3

    const/4 v0, 0x0

    .line 173
    .local v0, N:I
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 174
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 175
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/HtcInputMethodPreference;

    move-result-object v4

    .line 176
    .local v4, pref:Lcom/android/settings/inputmethod/HtcInputMethodPreference;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 127
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #pref:Lcom/android/settings/inputmethod/HtcInputMethodPreference;
    :cond_2
    const-string v6, "phone_language"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    goto/16 :goto_1

    .line 172
    :cond_3
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 179
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 180
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 182
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 187
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 188
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 192
    const-string v6, "textservices"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/TextServicesManager;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 193
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-static {v6}, Lcom/android/settings/inputmethod/SpellCheckerUtils;->getEnabledSpellCheckers(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 194
    const-string v6, "spellcheckers_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/inputmethod/SpellCheckersPreference;

    .line 196
    .local v5, scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v6, v6

    if-lez v6, :cond_7

    .line 197
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    if-eqz v5, :cond_6

    .line 200
    invoke-virtual {v5, p0, v3}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V

    .line 208
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    :goto_5
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 210
    return-void

    .line 203
    :cond_7
    if-eqz v5, :cond_6

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    .line 120
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v5           #scp:Lcom/android/settings/inputmethod/SpellCheckersPreference;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 363
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 368
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 373
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 358
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 377
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "onPreferenceTreeClick"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    const-string v4, "InputMethodAndLanguageSettings"

    const-string v5, "onPreferenceTreeClick - Monkey is Runnying!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 408
    :goto_0
    return v4

    .line 383
    :cond_2
    instance-of v5, p2, Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v5, :cond_5

    .line 384
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 408
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    goto :goto_0

    .line 386
    :cond_4
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 389
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 391
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    instance-of v5, p2, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_3

    move-object v0, p2

    .line 392
    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 393
    .local v0, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 395
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-ne v0, v5, :cond_7

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 394
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    .end local v1           #i:I
    :cond_8
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-ne v0, v5, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 21

    .prologue
    .line 263
    invoke-super/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 271
    .local v6, conf:Landroid/content/res/Configuration;
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, language:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 280
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 286
    .local v16, localeString:Ljava/lang/String;
    :goto_0
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getCustomizeDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 288
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 289
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Lcom/htc/preference/HtcPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    .end local v6           #conf:Landroid/content/res/Configuration;
    .end local v14           #language:Ljava/lang/String;
    .end local v16           #localeString:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    .line 303
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    sget-object v18, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v19, v19, v12

    invoke-virtual/range {v18 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 306
    .local v5, chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v5, :cond_1

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v19, v19, v12

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-lez v18, :cond_3

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 303
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 282
    .end local v5           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v12           #i:I
    .restart local v6       #conf:Landroid/content/res/Configuration;
    .restart local v14       #language:Ljava/lang/String;
    :cond_2
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #localeString:Ljava/lang/String;
    goto/16 :goto_0

    .line 307
    .end local v6           #conf:Landroid/content/res/Configuration;
    .end local v14           #language:Ljava/lang/String;
    .end local v16           #localeString:Ljava/lang/String;
    .restart local v5       #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v12       #i:I
    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 312
    .end local v5           #chkPref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v12           #i:I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 320
    const/4 v11, 0x0

    .line 322
    .local v11, hasBTMouse:Z
    :try_start_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v9

    .line 323
    .local v9, deviceIds:[I
    move-object v4, v9

    .local v4, arr$:[I
    array-length v15, v4

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_3
    if-ge v13, v15, :cond_6

    aget v8, v4, v13

    .line 324
    .local v8, deviceId:I
    invoke-static {v8}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 325
    .local v7, device:Landroid/view/InputDevice;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x2002

    move/from16 v18, v0

    const/16 v19, 0x2002

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 326
    const/4 v11, 0x1

    .line 323
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 329
    .end local v4           #arr$:[I
    .end local v7           #device:Landroid/view/InputDevice;
    .end local v8           #deviceId:I
    .end local v9           #deviceIds:[I
    .end local v13           #i$:I
    .end local v15           #len$:I
    :catch_0
    move-exception v10

    .line 330
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    .end local v10           #e:Ljava/lang/Exception;
    :cond_6
    if-nez v11, :cond_7

    .line 334
    const-string v18, "pointer_settings_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    .line 335
    .local v17, pointerSpeedPref:Lcom/htc/preference/HtcPreference;
    if-eqz v17, :cond_7

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 341
    .end local v17           #pointerSpeedPref:Lcom/htc/preference/HtcPreference;
    :cond_7
    sget-boolean v18, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEnableProfilingLog:Z

    if-eqz v18, :cond_8

    .line 342
    const-string v18, "AutoTest"

    const-string v19, "[AutoProf](304) [LAUNCH_TIME][Language & keyboard][Response Time][DATA_READY]"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_8
    return-void
.end method

.method public onSetupKeyboardLayouts(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    return-void
.end method
