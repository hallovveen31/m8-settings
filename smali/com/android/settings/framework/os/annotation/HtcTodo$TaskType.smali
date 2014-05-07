.class public final enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.super Ljava/lang/Enum;
.source "HtcTodo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/os/annotation/HtcTodo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum MIGRATION:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum NOT_PERFECT:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum PORTING:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum SENSE_55:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum SENSE_65:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

.field public static final enum TODO:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "MIGRATION"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->MIGRATION:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 48
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "PORTING"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->PORTING:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 54
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "SENSE_55"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_55:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 60
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "SENSE_60"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 66
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "SENSE_65"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_65:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 72
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "TODO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->TODO:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 79
    new-instance v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    const-string v1, "NOT_PERFECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->NOT_PERFECT:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->MIGRATION:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->PORTING:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_55:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_65:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->TODO:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->NOT_PERFECT:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->$VALUES:[Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->$VALUES:[Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;

    return-object v0
.end method
