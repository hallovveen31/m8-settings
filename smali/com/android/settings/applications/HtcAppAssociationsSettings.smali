.class public Lcom/android/settings/applications/HtcAppAssociationsSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAppAssociationsSettings.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "app_associations"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/applications/HtcAppAssociationsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcAppAssociationsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 58
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 59
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c09ed

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 60
    const-string v3, "app_associations"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 65
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcPhoneAppAssociationPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcPhoneAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcEmailAddAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcEmailAddAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 74
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcPhysicalAddAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcPhysicalAddAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 78
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcWebAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcWebAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 87
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcMapAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcMapAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 88
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAudioAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAudioAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcVideoAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcVideoAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 104
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcYoutubeAppAssociationPreference;

    .end local v0           #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcYoutubeAppAssociationPreference;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v0       #preference:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->addCallback(Ljava/lang/Object;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/HtcAppAssociationsSettings;->requestHandlers()V

    .line 49
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
