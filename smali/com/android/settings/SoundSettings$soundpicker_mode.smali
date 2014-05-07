.class final enum Lcom/android/settings/SoundSettings$soundpicker_mode;
.super Ljava/lang/Enum;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "soundpicker_mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/SoundSettings$soundpicker_mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_alarm:Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_cdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_gsm:Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_notify:Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_ring_general:Lcom/android/settings/SoundSettings$soundpicker_mode;

.field public static final enum mode_wcdma:Lcom/android/settings/SoundSettings$soundpicker_mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1677
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_ring_general"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_ring_general:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1678
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_notify"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_notify:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1679
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_alarm"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_alarm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1680
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_cdma"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_cdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1681
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_wcdma"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_wcdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1682
    new-instance v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    const-string v1, "mode_gsm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SoundSettings$soundpicker_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_gsm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    .line 1676
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/SoundSettings$soundpicker_mode;

    sget-object v1, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_ring_general:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_notify:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_alarm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_cdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_wcdma:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/SoundSettings$soundpicker_mode;->mode_gsm:Lcom/android/settings/SoundSettings$soundpicker_mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->$VALUES:[Lcom/android/settings/SoundSettings$soundpicker_mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1676
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/SoundSettings$soundpicker_mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 1676
    const-class v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SoundSettings$soundpicker_mode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/SoundSettings$soundpicker_mode;
    .locals 1

    .prologue
    .line 1676
    sget-object v0, Lcom/android/settings/SoundSettings$soundpicker_mode;->$VALUES:[Lcom/android/settings/SoundSettings$soundpicker_mode;

    invoke-virtual {v0}, [Lcom/android/settings/SoundSettings$soundpicker_mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/SoundSettings$soundpicker_mode;

    return-object v0
.end method
