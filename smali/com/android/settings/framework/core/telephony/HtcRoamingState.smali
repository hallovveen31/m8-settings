.class public final enum Lcom/android/settings/framework/core/telephony/HtcRoamingState;
.super Ljava/lang/Enum;
.source "HtcRoamingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/telephony/HtcRoamingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/telephony/HtcRoamingState;

.field public static final enum DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

.field public static final enum NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

.field public static final enum ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

.field public static final enum VOICE_AND_DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

.field public static final enum VOICE_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;


# instance fields
.field private mStateTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    const-string v1, "VOICE_ROAMING"

    const v2, 0x7f0c0ac3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 31
    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    const-string v1, "DATA_ROAMING"

    const v2, 0x7f0c0ac4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 41
    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    const-string v1, "VOICE_AND_DATA_ROAMING"

    const v2, 0x7f0c0ac5

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_AND_DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 51
    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    const-string v1, "ROAMING"

    const v2, 0x7f0c0b5f

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 56
    new-instance v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    const-string v1, "NOT_ROAMING"

    const v2, 0x7f0c0b60

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/framework/core/telephony/HtcRoamingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_AND_DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->$VALUES:[Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "stateTextResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->mStateTextResId:I

    .line 65
    return-void
.end method

.method public static getRoamingState(Z)Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 1
    .parameter "isRoaming"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 92
    .local v0, type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :goto_0
    return-object v0

    .line 90
    .end local v0           #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .restart local v0       #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    goto :goto_0
.end method

.method public static getRoamingState(ZZ)Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 1
    .parameter "isVoiceRoaming"
    .parameter "isDataRoaming"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_AND_DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .line 117
    .local v0, type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :goto_0
    return-object v0

    .line 110
    .end local v0           #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_0
    if-eqz p0, :cond_1

    .line 111
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->VOICE_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .restart local v0       #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    goto :goto_0

    .line 112
    .end local v0           #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_1
    if-eqz p1, :cond_2

    .line 113
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->DATA_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .restart local v0       #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    goto :goto_0

    .line 115
    .end local v0           #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->NOT_ROAMING:Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    .restart local v0       #type:Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/telephony/HtcRoamingState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->$VALUES:[Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/telephony/HtcRoamingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/telephony/HtcRoamingState;

    return-object v0
.end method


# virtual methods
.method public getStateTextResId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/framework/core/telephony/HtcRoamingState;->mStateTextResId:I

    return v0
.end method
