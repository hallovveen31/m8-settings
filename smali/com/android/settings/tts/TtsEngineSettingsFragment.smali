.class public Lcom/android/settings/tts/TtsEngineSettingsFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z = false

.field private static final KEY_ENGINE_LOCALE:Ljava/lang/String; = "tts_default_lang"

.field private static final KEY_ENGINE_SETTINGS:Ljava/lang/String; = "tts_engine_settings"

.field private static final KEY_INSTALL_DATA:Ljava/lang/String; = "tts_install_data"

.field private static final TAG:Ljava/lang/String; = "TtsEngineSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

.field private final mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalePreference:Lcom/htc/preference/HtcListPreference;

.field private mSelectedLocaleIndex:I

.field private mSystemLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mVoiceDataDetails:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/htc/preference/HtcListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    return-void
.end method

.method private final checkTtsData()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "TtsEngineSettings"

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

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install TTS data, no acitivty found for "

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

.method private setLocalePreference(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    const v1, 0x7f0c1122

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    array-length v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    new-instance v10, Ljava/util/Locale;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    array-length v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    new-instance v10, Ljava/util/Locale;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-direct {v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    array-length v11, v9

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    new-instance v10, Ljava/util/Locale;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    const/4 v13, 0x2

    aget-object v13, v9, v13

    invoke-direct {v10, v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v11, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;

    invoke-direct {v11, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    invoke-static {v4, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v11}, Landroid/speech/tts/TtsEngines;->getDefaultLocale()Ljava/lang/String;

    move-result-object v1

    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v2, v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v5, v11, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iput v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    :cond_7
    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    iput v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    :cond_8
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v2, v6

    add-int/lit8 v7, v6, 0x1

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v5, v6

    move v6, v7

    goto :goto_3

    :cond_9
    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, v2}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11, v5}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    invoke-direct {p0, v11}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->setLocalePreference(I)V

    goto/16 :goto_0
.end method

.method private updateLanguageTo(Ljava/lang/String;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v0

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v3, "TtsEngineSettings"

    const-string v4, "updateLanguageTo called with unknown locale argument"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    iget v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    iget v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSystemLocaleIndex:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateVoiceDetails()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "availableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string v3, "unavailableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "TtsEngineSettings"

    const-string v3, "TTS data check failed (available == null)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    iput-object p3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateVoiceDetails()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "tts_default_lang"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v1, "tts_engine_settings"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    const-string v1, "tts_install_data"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c113a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "voices"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Lcom/htc/preference/HtcPreference;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->installVoiceData()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Lcom/htc/preference/HtcPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
