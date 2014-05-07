.class final enum Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;
.super Ljava/lang/Enum;
.source "HtcAppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

.field public static final enum BOTH:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

.field public static final enum DANGEROUS_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

.field public static final enum NORMAL_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

.field public static final enum NO_PERMS:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    const-string v1, "NO_PERMS"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NO_PERMS:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 76
    new-instance v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    const-string v1, "DANGEROUS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 77
    new-instance v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    const-string v1, "NORMAL_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 78
    new-instance v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->BOTH:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    sget-object v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NO_PERMS:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->NORMAL_ONLY:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->BOTH:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->$VALUES:[Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->$VALUES:[Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    invoke-virtual {v0}, [Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/widget/HtcAppSecurityPermissions$State;

    return-object v0
.end method
