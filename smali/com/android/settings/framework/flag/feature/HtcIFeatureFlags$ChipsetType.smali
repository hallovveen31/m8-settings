.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$ChipsetType;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChipsetType"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "chipset"

.field public static final NVIDIA:I = 0x2

.field public static final QUALCOMM:I = 0x1

.field public static final SPREADTRUM:I = 0x5

.field public static final ST_EIRCSSON:I = 0x3

.field public static final VIA:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "chipsetType"

    .prologue
    .line 232
    packed-switch p0, :pswitch_data_0

    .line 249
    const-string v0, "UNKNOWN"

    .line 251
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 234
    .end local v0           #name:Ljava/lang/String;
    :pswitch_0
    const-string v0, "Qualcomm"

    .line 235
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v0           #name:Ljava/lang/String;
    :pswitch_1
    const-string v0, "Nvidia"

    .line 238
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v0           #name:Ljava/lang/String;
    :pswitch_2
    const-string v0, "ST-Eircsson"

    .line 241
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v0           #name:Ljava/lang/String;
    :pswitch_3
    const-string v0, "VIA"

    .line 244
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v0           #name:Ljava/lang/String;
    :pswitch_4
    const-string v0, "Spreadtrum"

    .line 247
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
