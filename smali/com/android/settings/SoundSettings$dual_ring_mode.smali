.class final enum Lcom/android/settings/SoundSettings$dual_ring_mode;
.super Ljava/lang/Enum;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "dual_ring_mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/SoundSettings$dual_ring_mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/SoundSettings$dual_ring_mode;

.field public static final enum dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

.field public static final enum dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

.field public static final enum dual_ring_td_scdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

.field public static final enum dual_ring_wcdma:Lcom/android/settings/SoundSettings$dual_ring_mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 250
    new-instance v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    const-string v1, "dual_ring_na"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SoundSettings$dual_ring_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    .line 251
    new-instance v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    const-string v1, "dual_ring_cdma"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/SoundSettings$dual_ring_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    .line 252
    new-instance v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    const-string v1, "dual_ring_wcdma"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/SoundSettings$dual_ring_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_wcdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    .line 253
    new-instance v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    const-string v1, "dual_ring_td_scdma"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SoundSettings$dual_ring_mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_td_scdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    .line 249
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/SoundSettings$dual_ring_mode;

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_na:Lcom/android/settings/SoundSettings$dual_ring_mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_wcdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_td_scdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->$VALUES:[Lcom/android/settings/SoundSettings$dual_ring_mode;

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
    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/SoundSettings$dual_ring_mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 249
    const-class v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SoundSettings$dual_ring_mode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/SoundSettings$dual_ring_mode;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/settings/SoundSettings$dual_ring_mode;->$VALUES:[Lcom/android/settings/SoundSettings$dual_ring_mode;

    invoke-virtual {v0}, [Lcom/android/settings/SoundSettings$dual_ring_mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/SoundSettings$dual_ring_mode;

    return-object v0
.end method
