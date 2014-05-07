.class public Lcom/android/settings/HapticUtil;
.super Ljava/lang/Object;
.source "HapticUtil.java"


# static fields
.field public static HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String; = null

.field public static final HAPTIC_IVT_THEME_PATH:Ljava/lang/String; = "dummy"

.field public static final KEY_NOTIFY_TONE_ID:Ljava/lang/String; = "dummy"

.field public static final KEY_NOTIFY_TONE_NAME:Ljava/lang/String; = "dummy"

.field public static final KEY_RING_TONE_DEF_PATH:Ljava/lang/String; = "dummy"

.field public static final KEY_RING_TONE_NAME:Ljava/lang/String; = "dummy"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "dummy"

    sput-object v0, Lcom/android/settings/HapticUtil;->HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/settings/HapticUtil;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static getNotifyNameForUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strUinName"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtoneID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strName"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtoneIvtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRintoneNameForUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRintoneNameForUser_ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method static initHapticDevice(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public static isHapticVibrateSupport()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public static listNotifyTone()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listRigtones(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public static playRintoneEffect(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "filename"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public static releaseDevice()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public static stoPlayRingtone(Ljava/lang/Object;)Z
    .locals 1
    .parameter "playerObject"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public SetVibrateTheme(Ljava/lang/String;)Z
    .locals 1
    .parameter "strValue"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getVibrateTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareThemeList(Ljava/util/Vector;Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .local p2, values:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method
