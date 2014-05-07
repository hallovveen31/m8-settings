.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final HTC_VDSTRING:Ljava/lang/String; = "com.htc.android.voicedictation/.VoiceDictationService"

.field private static final KEY_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field private static final KEY_RECOGNIZER_SETTINGS:Ljava/lang/String; = "recognizer_settings"

.field private static final KEY_TTS_SETTINGS:Ljava/lang/String; = "tts_settings"

.field private static final KEY_VOICE_CATEGORY:Ljava/lang/String; = "voice_category"

.field private static final TAG:Ljava/lang/String; = "VoiceInputOutputSettings"


# instance fields
.field private mAvailableRecognizersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mParent:Lcom/htc/preference/HtcPreferenceGroup;

.field private mRecognizerPref:Lcom/htc/preference/HtcListPreference;

.field private mRecognizerSettingsPref:Lcom/htc/preference/HtcPreference;

.field private mSettingsPref:Lcom/htc/preference/HtcPreferenceScreen;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Lcom/htc/preference/HtcPreference;

.field private mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    return-void
.end method

.method private populateOrRemovePreferences()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveRecognizerPrefs()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    return-void
.end method

.method private populateOrRemoveRecognizerPrefs()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.RecognitionService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_0
    return v5

    :cond_0
    if-ne v2, v6, :cond_2

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.htc.android.voicedictation/.VoiceDictationService"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "voice_recognition_service"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->populateRecognizerPreference(Ljava/util/List;)V

    goto :goto_1
.end method

.method private populateOrRemoveTtsPrefs()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private populateRecognizerPreference(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "com.htc.android.voicedictation/.VoiceDictationService"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/CharSequence;

    new-array v9, v8, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voice_recognition_service"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "com.htc.android.voicedictation/.VoiceDictationService"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voice_recognition_service"

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voice_recognition_service"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "VoiceInputOutputSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "222 recognizerComponent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v10}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v3, v4

    aput-object v6, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v9}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSettingsLink(Ljava/lang/String;)V
    .locals 14

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.speech"

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No android.speech meta-data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    if-nez v8, :cond_7

    const-string v11, "VoiceInputOutputSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no recognizer settings available for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    :cond_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "recognition-service"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "Meta-data does not start with recognition-service tag"

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_5
    :try_start_4
    sget-object v11, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v7, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v6, :cond_1

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_5
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v11

    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v11, v4}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v11, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    iget-object v12, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Lcom/htc/preference/HtcPreference;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Lcom/htc/preference/HtcPreference;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mSettingsPref:Lcom/htc/preference/HtcPreferenceScreen;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mRecognizerPref:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/settings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
