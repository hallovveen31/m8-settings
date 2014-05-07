.class final enum Lcom/android/settings/RingerVolume$SavedState$initsatae;
.super Ljava/lang/Enum;
.source "RingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolume$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "initsatae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/RingerVolume$SavedState$initsatae;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/RingerVolume$SavedState$initsatae;

.field public static final enum initsatae_inited:Lcom/android/settings/RingerVolume$SavedState$initsatae;

.field public static final enum initsatae_notinit:Lcom/android/settings/RingerVolume$SavedState$initsatae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;

    const-string v1, "initsatae_notinit"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/RingerVolume$SavedState$initsatae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;->initsatae_notinit:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    new-instance v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;

    const-string v1, "initsatae_inited"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/RingerVolume$SavedState$initsatae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;->initsatae_inited:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/RingerVolume$SavedState$initsatae;

    sget-object v1, Lcom/android/settings/RingerVolume$SavedState$initsatae;->initsatae_notinit:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/RingerVolume$SavedState$initsatae;->initsatae_inited:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;->$VALUES:[Lcom/android/settings/RingerVolume$SavedState$initsatae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/RingerVolume$SavedState$initsatae;
    .locals 1

    const-class v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/RingerVolume$SavedState$initsatae;
    .locals 1

    sget-object v0, Lcom/android/settings/RingerVolume$SavedState$initsatae;->$VALUES:[Lcom/android/settings/RingerVolume$SavedState$initsatae;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/RingerVolume$SavedState$initsatae;

    return-object v0
.end method
