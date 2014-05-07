.class public final Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcRecentAppsButtonPreference.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY:Ljava/lang/String; = "RECENT_APPS_BUTTON_SETTING"

.field private static final TAG:Ljava/lang/String;

.field private static sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;


# instance fields
.field protected mValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->DEBUG:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->mValueMap:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->mValueMap:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method private static supportAlwaysOpenRecentApps(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    sget-object v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 55
    :cond_0
    new-instance v0, Lcom/android/settings/framework/util/HtcDisplayMetrics;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, dm:Lcom/android/settings/framework/util/HtcDisplayMetrics;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getDisplayResolution(Landroid/content/Context;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/framework/util/HtcDisplayMetrics;->getPhysicalScreenResolutionInSpec()F

    move-result v1

    const v2, 0x4089999a

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->sSupportAlwaysOpenRecentApps:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, entries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->supportAlwaysOpenRecentApps(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entries:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 98
    .restart local v0       #entries:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f08009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->supportAlwaysOpenRecentApps(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #values:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 115
    .restart local v1       #values:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "RECENT_APPS_BUTTON_SETTING"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, value:I
    if-ne v0, v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->supportAlwaysOpenRecentApps(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    .line 126
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no default value from the database\n - value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 152
    :goto_0
    return-object v3

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 142
    .local v2, values:[Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_1
    array-length v1, v2

    .line 147
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 148
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, value:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIDE_NAV_BAR"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :goto_0
    return v4

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIDE_NAV_BAR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
