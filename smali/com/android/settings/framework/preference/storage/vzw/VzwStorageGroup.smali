.class public Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "VzwStorageGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->initialize()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->initialize()V

    .line 48
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Backup Assistant Plus cloud storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method


# virtual methods
.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
