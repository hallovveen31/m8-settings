.class public Lcom/android/settings/framework/activity/charm/HtcCharmSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcCharmSettings.java"


# static fields
.field private static INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    const/4 v0, 0x0

    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmPhonePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmPhonePreference;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    const-string v2, "ro.HorizontalVVM"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/settings/framework/preference/charm/HtcCharmVoiceMailPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/charm/HtcCharmVoiceMailPreference;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/settings/framework/activity/charm/HtcCharmSettings;->INDEX:I

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method
