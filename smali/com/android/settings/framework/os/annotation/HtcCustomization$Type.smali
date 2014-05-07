.class public final enum Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
.super Ljava/lang/Enum;
.source "HtcCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/os/annotation/HtcCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

.field public static final enum ACC:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

.field public static final enum CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

.field public static final enum MIXED:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

.field public static final enum SYSTEM_PROPERTY:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    const-string v1, "CID"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    const-string v1, "ACC"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->ACC:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    const-string v1, "SYSTEM_PROPERTY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->SYSTEM_PROPERTY:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->MIXED:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->CID:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->ACC:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->SYSTEM_PROPERTY:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->MIXED:Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->$VALUES:[Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .locals 1

    const-class v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;->$VALUES:[Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/os/annotation/HtcCustomization$Type;

    return-object v0
.end method
