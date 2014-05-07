.class public Lcom/android/settings/NotificationFlashSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "NotificationFlashSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;,
        Lcom/android/settings/NotificationFlashSettings$ViewHolder;,
        Lcom/android/settings/NotificationFlashSettings$ColorItem;
    }
.end annotation


# static fields
.field private static final AP_NAME_ANDROID_MESSAGE:Ljava/lang/String; = "Message"

.field private static final AP_NAME_ANDROID_TELEPHONY_MESSAGE:Ljava/lang/String; = "Android_TelephonyMessage"

.field private static final AP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final EVENT_SET_ALARM:I = 0x6

.field private static final EVENT_SET_EMAIL:I = 0x3

.field private static final EVENT_SET_MISSED_CALL:I = 0x1

.field private static final EVENT_SET_REMINDER:I = 0x5

.field private static final EVENT_SET_SMS:I = 0x2

.field private static final EVENT_SET_VOICEMAIL:I = 0x4

.field private static final FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field private static final FLAG_SKU_ID:Ljava/lang/String; = "sku_id"

.field private static final FLAG_WIFI_ONLY:Ljava/lang/String; = "wifi_only"

.field private static final KEY_TOGGLE_ALARM:Ljava/lang/String; = "alarm_title"

.field private static final KEY_TOGGLE_EMAIL:Ljava/lang/String; = "incoming_email_title"

.field private static final KEY_TOGGLE_MESSAGE:Ljava/lang/String; = "incoming_message_title"

.field private static final KEY_TOGGLE_MISSED_CALL:Ljava/lang/String; = "missed_call_title"

.field private static final KEY_TOGGLE_REMINDERS:Ljava/lang/String; = "reminider_title"

.field private static final KEY_TOGGLE_VOICE_MAIL:Ljava/lang/String; = "incoming_voice_mail_title"

.field private static final NOTIFICATION_LED_PREVIEW_ID:I = 0x7b

.field private static final NOTIFICATION_LED_PREVIEW_TAG:Ljava/lang/String; = "notification_led_preview_tag"

.field private static final SKU_HTCCN_CHS_CT:I = 0x1b

.field private static final SKU_HTCCN_CHS_CT_LAB:I = 0x1c

.field private static final SKU_KDDI_JP:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "__NOTIFY_FLASH__"

.field private static sMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

.field private static sSenseVersion:F

.field private static sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

.field private static sTelephonyMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;


# instance fields
.field protected mColorItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/NotificationFlashSettings$ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHasPhoneFunction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sput-object v5, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    sput-object v5, Lcom/android/settings/NotificationFlashSettings;->sMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    sput-object v5, Lcom/android/settings/NotificationFlashSettings;->sTelephonyMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    new-instance v0, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    const-string v3, "System"

    invoke-virtual {v0, v3, v6, v4}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v3

    sput-object v3, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    const-string v3, "Message"

    invoke-virtual {v0, v3, v6, v4}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v3

    sput-object v3, Lcom/android/settings/NotificationFlashSettings;->sMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    const-string v3, "Android_TelephonyMessage"

    invoke-virtual {v0, v3, v6, v4}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v3

    sput-object v3, Lcom/android/settings/NotificationFlashSettings;->sTelephonyMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    sget-object v3, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    if-nez v3, :cond_0

    const-string v3, "__NOTIFY_FLASH__"

    const-string v4, "systemCustReader is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/android/settings/NotificationFlashSettings;->sMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    if-nez v3, :cond_1

    const-string v3, "__NOTIFY_FLASH__"

    const-string v4, "messageCustReader is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v3, Lcom/android/settings/NotificationFlashSettings;->sTelephonyMessageCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    if-nez v3, :cond_2

    const-string v3, "__NOTIFY_FLASH__"

    const-string v4, "frameworkCustReader is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/high16 v3, 0x40b0

    sput v3, Lcom/android/settings/NotificationFlashSettings;->sSenseVersion:F

    sget-object v3, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    if-nez v3, :cond_4

    const-string v3, "__NOTIFY_FLASH__"

    const-string v4, "systemCustReader is null! return null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v3, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    const-string v4, "sense_version"

    invoke-virtual {v3, v4, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__NOTIFY_FLASH__"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sense_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :try_start_0
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/android/settings/NotificationFlashSettings;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "__NOTIFY_FLASH__"

    const-string v4, "get wrong Sense version!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationFlashSettings;->mColorItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/NotificationFlashSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationFlashSettings$1;-><init>(Lcom/android/settings/NotificationFlashSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationFlashSettings;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/NotificationFlashSettings;->refreshUi(Landroid/content/Context;)V

    return-void
.end method

.method private getColorDialogListView(Landroid/content/Context;Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;)Lcom/htc/widget/HtcListView;
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcListView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public static getSenseVersion()F
    .locals 1

    sget v0, Lcom/android/settings/NotificationFlashSettings;->sSenseVersion:F

    return v0
.end method

.method public static getSkuId()I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    if-nez v1, :cond_0

    const-string v1, "__NOTIFY_FLASH__"

    const-string v2, "systemCustReader is null! return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    const-string v2, "sku_id"

    invoke-virtual {v1, v2, v0}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "__NOTIFY_FLASH__"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sku_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSupport8Color()Z
    .locals 2

    const/16 v0, 0x1f

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVoicemailNotificationLed()Z
    .locals 2

    const/16 v0, 0x1b

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->getSkuId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1c

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->getSkuId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshUi(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, -0x1

    invoke-static {p1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAllData(Landroid/content/Context;)[Z

    move-result-object v0

    invoke-static {p1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAllDataColor(Landroid/content/Context;)[I

    move-result-object v3

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "missed_call_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    aget v2, v3, v8

    aget-boolean v4, v0, v8

    if-eqz v4, :cond_6

    :goto_0
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "incoming_message_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    aget v2, v3, v9

    aget-boolean v4, v0, v9

    if-eqz v4, :cond_8

    :goto_2
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "incoming_email_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    aget v2, v3, v10

    aget-boolean v4, v0, v10

    if-eqz v4, :cond_a

    :goto_4
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_2
    :goto_5
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "incoming_voice_mail_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_3

    aget v2, v3, v11

    aget-boolean v4, v0, v11

    if-eqz v4, :cond_c

    :goto_6
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_3
    :goto_7
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "reminider_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v7, 0x5

    aget v2, v3, v7

    const/4 v7, 0x5

    aget-boolean v4, v0, v7

    if-eqz v4, :cond_e

    :goto_8
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_4
    :goto_9
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "alarm_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v7, 0x6

    aget v2, v3, v7

    const/4 v7, 0x6

    aget-boolean v4, v0, v7

    if-eqz v4, :cond_10

    :goto_a
    invoke-direct {p0, v5, v4, v2}, Lcom/android/settings/NotificationFlashSettings;->set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V

    :cond_5
    :goto_b
    return-void

    :cond_6
    move v2, v6

    goto :goto_0

    :cond_7
    const-string v7, "missed_call_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    aget-boolean v7, v0, v8

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move v2, v6

    goto :goto_2

    :cond_9
    const-string v7, "incoming_message_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    aget-boolean v7, v0, v9

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_a
    move v2, v6

    goto :goto_4

    :cond_b
    const-string v7, "incoming_email_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    aget-boolean v7, v0, v10

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_c
    move v2, v6

    goto :goto_6

    :cond_d
    const-string v7, "incoming_voice_mail_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_3

    aget-boolean v7, v0, v11

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_e
    move v2, v6

    goto :goto_8

    :cond_f
    const-string v7, "reminider_title"

    invoke-virtual {p0, v7}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_4

    const/4 v7, 0x5

    aget-boolean v7, v0, v7

    invoke-virtual {v1, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    :cond_10
    move v2, v6

    goto :goto_a

    :cond_11
    const-string v6, "alarm_title"

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_5

    const/4 v6, 0x6

    aget-boolean v6, v0, v6

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method private set8ColorPreferenceSummary(Lcom/htc/preference/HtcPreference;ZI)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const v2, 0x7f0c106f

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/NotificationFlashSettings;->mColorItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget v2, v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    if-ne p3, v2, :cond_3

    iget-object v2, v1, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showColorPickerDialog(ILandroid/os/Message;)V
    .locals 11

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iput p1, p2, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0c049c

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v9, 0x2040174

    new-instance v10, Lcom/android/settings/NotificationFlashSettings$2;

    invoke-direct {v10, p0, p2}, Lcom/android/settings/NotificationFlashSettings$2;-><init>(Lcom/android/settings/NotificationFlashSettings;Landroid/os/Message;)V

    invoke-virtual {v1, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v9, 0x2040179

    new-instance v10, Lcom/android/settings/NotificationFlashSettings$3;

    invoke-direct {v10, p0}, Lcom/android/settings/NotificationFlashSettings$3;-><init>(Lcom/android/settings/NotificationFlashSettings;)V

    invoke-virtual {v1, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    new-instance v0, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;

    iget-object v9, p0, Lcom/android/settings/NotificationFlashSettings;->mColorItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v9, p1}, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;-><init>(Lcom/android/settings/NotificationFlashSettings;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v2, v0}, Lcom/android/settings/NotificationFlashSettings;->getColorDialogListView(Landroid/content/Context;Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->getSelectColorPosition()I

    move-result v5

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    invoke-virtual {v6, v5, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    new-instance v9, Lcom/android/settings/NotificationFlashSettings$4;

    invoke-direct {v9, p0, v0, v6, p2}, Lcom/android/settings/NotificationFlashSettings$4;-><init>(Lcom/android/settings/NotificationFlashSettings;Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;Lcom/htc/widget/HtcListView;Landroid/os/Message;)V

    invoke-virtual {v6, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Lcom/android/settings/NotificationFlashSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/NotificationFlashSettings$5;-><init>(Lcom/android/settings/NotificationFlashSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 4

    const v2, 0x7f0c0152

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportRecentAppsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_0

    const v2, 0x7f0c0153

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f0c0154

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const v2, 0x7f0c0155

    :cond_2
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->getSenseVersion()F

    move-result v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4012

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_7

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f060028

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0800bb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v9, 0x7f0800bc

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    array-length v9, v2

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/NotificationFlashSettings;->mColorItems:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    aget-object v11, v2, v4

    aget-object v12, v3, v4

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    invoke-direct {v10, p0, v11, v12}, Lcom/android/settings/NotificationFlashSettings$ColorItem;-><init>(Lcom/android/settings/NotificationFlashSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const v9, 0x7f06002a

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    :cond_2
    :goto_2
    const-string v9, "ro.phone.function"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "0"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/android/settings/NotificationFlashSettings;->mHasPhoneFunction:Z

    iget-boolean v9, p0, Lcom/android/settings/NotificationFlashSettings;->mHasPhoneFunction:Z

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    const-string v9, "notification_flash_category"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v9, "missed_call_title"

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    const-string v9, "incoming_voice_mail_title"

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupportVoicemailNotificationLed()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    const-string v9, "notification_flash_category"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v9, "incoming_voice_mail_title"

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    sget-object v9, Lcom/android/settings/NotificationFlashSettings;->sSystemCustReader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    const-string v10, "wifi_only"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    const-string v9, "notification_flash_category"

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    const-string v9, "incoming_message_title"

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/NotificationFlashSettings;->refreshUi(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const v9, 0x7f060029

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "notification_led_preview_tag"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 22

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_0
    invoke-static {}, Lcom/android/settings/NotificationFlashSettings;->isSupport8Color()Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "missed_call_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    check-cast v12, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v20, "incoming_message_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v20, "incoming_voice_mail_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v18

    check-cast v18, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v20, "incoming_email_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v20, "reminider_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v15

    check-cast v15, Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v20, "alarm_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_2

    invoke-virtual {v12}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setMissCall(Landroid/content/Context;Z)V

    :cond_1
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    if-ne v0, v10, :cond_3

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setSms(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    if-ne v0, v8, :cond_4

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setEmail(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setVoiceMail(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    if-ne v0, v15, :cond_6

    invoke-virtual {v15}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setReminder(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setAlarm(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAllData(Landroid/content/Context;)[Z

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getAllDataColor(Landroid/content/Context;)[I

    move-result-object v7

    const-string v20, "missed_call_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    const-string v20, "incoming_message_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    const-string v20, "incoming_voice_mail_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v19

    const-string v20, "incoming_email_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    const-string v20, "reminider_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v16

    const-string v20, "alarm_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v6, -0x1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_9

    const/16 v20, 0x1

    aget-boolean v14, v5, v20

    const/16 v20, 0x1

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    :cond_8
    :goto_2
    if-eqz v17, :cond_f

    if-eqz v14, :cond_e

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/android/settings/NotificationFlashSettings;->showColorPickerDialog(ILandroid/os/Message;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p2

    if-ne v0, v11, :cond_a

    const/16 v20, 0x2

    aget-boolean v14, v5, v20

    const/16 v20, 0x2

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    goto :goto_2

    :cond_a
    move-object/from16 v0, p2

    if-ne v0, v9, :cond_b

    const/16 v20, 0x3

    aget-boolean v14, v5, v20

    const/16 v20, 0x3

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    goto :goto_2

    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v20, 0x4

    aget-boolean v14, v5, v20

    const/16 v20, 0x4

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    goto :goto_2

    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    const/16 v20, 0x5

    aget-boolean v14, v5, v20

    const/16 v20, 0x5

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    goto :goto_2

    :cond_d
    move-object/from16 v0, p2

    if-ne v0, v4, :cond_8

    const/16 v20, 0x6

    aget-boolean v14, v5, v20

    const/16 v20, 0x6

    aget v6, v7, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationFlashSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    goto/16 :goto_2

    :cond_e
    const/4 v6, -0x1

    goto/16 :goto_3

    :cond_f
    const-string v20, "__NOTIFY_FLASH__"

    const-string v21, "Clicked a not handled UI???"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
