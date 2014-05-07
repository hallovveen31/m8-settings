.class public Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcFontSimpleSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 32
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v1, 0x1

    .line 33
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontStyle(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    new-instance v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;-><init>(Landroid/content/Context;)V

    .line 35
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 36
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 37
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->addCallback(Ljava/lang/Object;)V

    move v1, v2

    .line 40
    .end local v2           #index:I
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    .restart local v1       #index:I
    :cond_0
    new-instance v3, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;-><init>(Landroid/app/Activity;)V

    .line 41
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 42
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 43
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->addCallback(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/fonts/HtcFontSimpleSettings;->requestHandlers()V

    .line 47
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
