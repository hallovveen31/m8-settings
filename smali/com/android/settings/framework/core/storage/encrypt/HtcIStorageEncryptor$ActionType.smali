.class public final enum Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
.super Ljava/lang/Enum;
.source "HtcIStorageEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType; = null

.field public static final enum DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType; = null

.field public static final enum ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType; = null

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final enum UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;


# instance fields
.field private mActionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    const-string v1, "ENCRYPT"

    const-string v2, "encrypt"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 34
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    const-string v1, "DECRYPT"

    const-string v2, "unencrypt"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 35
    new-instance v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->$VALUES:[Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "actionName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->mActionName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getActionTypeFrom(Landroid/content/Intent;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 2
    .parameter "intent"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .restart local v0       #extras:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v1

    return-object v1
.end method

.method public static getActionTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 109
    if-eqz p0, :cond_0

    .line 110
    const-string v4, "action_type"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    :goto_0
    if-nez v1, :cond_1

    .line 124
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 151
    .local v3, type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :goto_1
    return-object v3

    .line 112
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_0
    const/4 v1, 0x0

    .local v1, object:Ljava/lang/Object;
    goto :goto_0

    .line 126
    .end local v1           #object:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-eqz v4, :cond_2

    move-object v3, v1

    .line 129
    check-cast v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1

    .line 131
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v0, v1

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, name:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1

    .line 137
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_3
    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1

    .line 141
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_4
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1

    .line 144
    .end local v0           #name:Ljava/lang/String;
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_5
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 145
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    .local v2, ordinal:I
    invoke-static {}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->values()[Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v4

    aget-object v3, v4, v2

    .line 148
    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1

    .line 149
    .end local v2           #ordinal:I
    .end local v3           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_6
    sget-object v3, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_1
.end method

.method public static setActionTypeTo(Landroid/content/Intent;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Z
    .locals 2
    .parameter "intent"
    .parameter "actionType"

    .prologue
    .line 89
    if-eqz p0, :cond_1

    .line 90
    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 93
    :cond_0
    const-string v0, "action_type"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setActionTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Z
    .locals 2
    .parameter "bundle"
    .parameter "actionType"

    .prologue
    .line 70
    if-eqz p0, :cond_1

    .line 71
    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->UNKNOWN:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 74
    :cond_0
    const-string v0, "action_type"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->$VALUES:[Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->mActionName:Ljava/lang/String;

    return-object v0
.end method
