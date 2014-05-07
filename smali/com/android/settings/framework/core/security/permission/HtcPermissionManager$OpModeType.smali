.class public final enum Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
.super Ljava/lang/Enum;
.source "HtcPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType; = null

.field public static final enum ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType; = null

.field public static final enum ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType; = null

.field public static final enum DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType; = null

.field public static final enum ERROR:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType; = null

.field public static final KEY_OP_MODE_TYPE:Ljava/lang/String; = "OP_MODE_TYPE"

.field public static final enum UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;


# instance fields
.field private mOpModeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    new-instance v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const-string v1, "ALWAYS_ASK"

    sget v2, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->MODE_HINT:I

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    new-instance v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    new-instance v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6, v5}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ERROR:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    new-instance v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ERROR:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->$VALUES:[Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->mOpModeType:I

    return-void
.end method

.method public static getOpModeTypeFromValue(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALWAYS_ASK:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->DENY:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    goto :goto_0
.end method

.method public static getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$1;->$SwitchMap$com$android$settings$framework$core$security$permission$HtcPermissionManager$OpModeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f0c0b29

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0c0b2a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0c0b2b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getOpModeTypeNameFromValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeFromValue(I)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->$VALUES:[Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    return-object v0
.end method


# virtual methods
.method public getOpModeTypeValue()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->mOpModeType:I

    return v0
.end method
