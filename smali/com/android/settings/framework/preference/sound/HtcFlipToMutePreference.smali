.class public Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcFlipToMutePreference.java"


# static fields
.field private static final DB_VALUE_DEFAULT:Ljava/lang/String; = null

.field private static final DB_VALUE_MUTE_ALWAYS:I = 0x1

.field private static final DB_VALUE_MUTE_ONCE:I = 0x0

.field private static final ERROR_INDEX:I = -0x1

.field private static final GLOBAL_DB_KEY:Ljava/lang/String; = "htc_flip_to_mute"

.field public static final KEY:Ljava/lang/String; = "HtcFlipToMutePreference"

.field private static final MUTE_ALWAYS_INDEX:I = 0x1

.field private static final MUTE_ONCE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOTAL_INDEX:I = 0x2


# instance fields
.field private mMuteTypeEntries:[Ljava/lang/String;

.field private mMuteTypeValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->DB_VALUE_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->initEntries()V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->initValues()V

    .line 48
    return-void
.end method

.method private initEntries()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeEntries:[Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeEntries:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0b1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeEntries:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0b1f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    return-void
.end method

.method private initValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 68
    return-void
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeEntries:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b1d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_flip_to_mute"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    .line 111
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetValueInBackground, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_4

    .line 117
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetValueInBackground, use default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->DB_VALUE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_4
    sget-object v0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->DB_VALUE_DEFAULT:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->mMuteTypeValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_flip_to_mute"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 133
    .local v0, result:Z
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcFlipToMutePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetValueInBackground, newValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
