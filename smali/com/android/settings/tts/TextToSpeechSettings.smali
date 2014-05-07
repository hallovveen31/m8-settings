.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;


# static fields
.field private static final DBG:Z = false

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final GET_TEST_SAMPLE_TEXT:I = 0x7c0

.field private static final KEY_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_ENGINE_PREFERENCE_SECTION:Ljava/lang/String; = "tts_engine_preference_section"

.field private static final KEY_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_STATUS:Ljava/lang/String; = "tts_status"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Lcom/htc/preference/HtcListPreference;

.field private mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mEngineStatus:Lcom/htc/preference/HtcPreference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Lcom/htc/preference/HtcPreference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mSampleText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 107
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 108
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 141
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TextToSpeechSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    return-object v0
.end method

.method private checkDefaultLocale()V
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 264
    .local v1, defaultLocale:Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 265
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get default language from engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 267
    const v2, 0x7f0c1133

    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 273
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 274
    .local v0, defaultAvailable:I
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/16 v2, 0x7bf

    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText(I)V

    goto :goto_0
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .parameter "engine"

    .prologue
    .line 587
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayNetworkAlert()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    .local v0, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c112e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 506
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 507
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 509
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/tts/TextToSpeechSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/tts/TextToSpeechSettings$4;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 517
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 518
    .local v1, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 519
    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 282
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 318
    :goto_0
    return v5

    .line 285
    :cond_1
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 288
    .local v0, defaultAvailable:I
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, defaultLocaleStr:Ljava/lang/String;
    const/4 v4, 0x1

    .line 290
    .local v4, notInAvailableLangauges:Z
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_2
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_3
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, loc:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 299
    const/4 v4, 0x0

    .line 304
    .end local v3           #loc:Ljava/lang/String;
    :cond_5
    const/4 v7, -0x2

    if-eq v0, v7, :cond_6

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    if-eqz v4, :cond_7

    .line 308
    :cond_6
    const v5, 0x7f0c1133

    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 309
    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    move v5, v6

    .line 310
    goto/16 :goto_0

    .line 312
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 313
    const v6, 0x7f0c1132

    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 317
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto/16 :goto_0

    .line 315
    :cond_8
    const v6, 0x7f0c1131

    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    goto :goto_1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 372
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, currentLang:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, strings:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 380
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    aget-object v4, v3, v1

    .line 385
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 379
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c112f

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getSampleText(I)V
    .locals 6
    .parameter "requestCode"

    .prologue
    .line 329
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v3, :cond_0

    .line 330
    const-string v3, "TextToSpeechSettings"

    const-string v4, "mTts is null, getSampleText failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, currentEngine:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "language"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v3, "country"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v3, "variant"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 9

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 219
    .local v6, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/htc/preference/HtcListPreference;

    iget v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 225
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .end local v5           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    check-cast v5, Lcom/htc/preference/HtcPreferenceActivity;

    .line 237
    .restart local v5       #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 239
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 241
    .local v1, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v2, Lcom/android/settings/tts/HtcTtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v1, p0, v5}, Lcom/android/settings/tts/HtcTtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;Lcom/htc/preference/HtcPreferenceActivity;)V

    .line 243
    .local v2, enginePref:Lcom/android/settings/tts/HtcTtsEnginePreference;
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 220
    .end local v1           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2           #enginePref:Lcom/android/settings/tts/HtcTtsEnginePreference;
    .end local v3           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v7, 0x64

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 233
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5       #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a PreferenceActivity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    .restart local v3       #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 390
    .local v0, features:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, sample:Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 401
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 411
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onTestSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, sample:Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 435
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 447
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 601
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, engine:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 604
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    if-nez p1, :cond_2

    .line 609
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 616
    const-string v5, "availableVoices"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 618
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v5, :cond_3

    .line 619
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no available voices found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 624
    const/16 v5, 0x7bf

    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText(I)V

    .line 627
    :cond_4
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 628
    .local v1, engineCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 629
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 630
    .local v4, p:Lcom/htc/preference/HtcPreference;
    instance-of v5, v4, Lcom/android/settings/tts/HtcTtsEnginePreference;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 631
    check-cast v2, Lcom/android/settings/tts/HtcTtsEnginePreference;

    .line 632
    .local v2, enginePref:Lcom/android/settings/tts/HtcTtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/settings/tts/HtcTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 633
    invoke-virtual {v2, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    goto :goto_0

    .line 628
    .end local v2           #enginePref:Lcom/android/settings/tts/HtcTtsEnginePreference;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private speakSampleText()V
    .locals 5

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    .line 419
    .local v0, networkRequired:Z
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 421
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 429
    .end local v1           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v2, "TextToSpeechSettings"

    const-string v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 526
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 527
    const v1, 0x7f0c1134

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 539
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 553
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 554
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEngineStatus(I)V
    .locals 5
    .parameter "resourceId"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 495
    .local v0, locale:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 491
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 671
    const v0, 0x7f0c02e4

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 362
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 363
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/16 v0, 0x7c0

    if-ne p1, v0, :cond_2

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onTestSampleTextReceived(ILandroid/content/Intent;)V

    goto :goto_0

    .line 366
    :cond_2
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 367
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 155
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    .line 156
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 159
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 161
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/htc/preference/HtcListPreference;

    .line 163
    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Lcom/htc/preference/HtcPreference;

    .line 164
    const v0, 0x7f0c1134

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 166
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 167
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    .line 171
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 212
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 453
    const-string v1, "tts_default_rate"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Lcom/htc/preference/HtcPreference;

    if-ne p1, v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    .line 479
    const/4 v0, 0x1

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 177
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 181
    .local v0, ttsDefaultLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 562
    if-nez p1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 575
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 653
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 660
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    .line 662
    return-void
.end method
