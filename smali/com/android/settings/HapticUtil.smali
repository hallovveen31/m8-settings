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

    const-string v0, "dummy"

    sput-object v0, Lcom/android/settings/HapticUtil;->HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/HapticUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getNotifyNameForUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtoneID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtoneIvtPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRintoneNameForUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRintoneNameForUser_ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static initHapticDevice(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isHapticVibrateSupport()Z
    .locals 1

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public static listRigtones(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public static playRintoneEffect(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static releaseDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static stoPlayRingtone(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public SetVibrateTheme(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVibrateTheme()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareThemeList(Ljava/util/Vector;Ljava/util/Vector;)Z
    .locals 1
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

    const/4 v0, 0x0

    return v0
.end method
