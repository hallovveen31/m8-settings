.class public Lcom/android/settings/WrapCustomizationReader;
.super Ljava/lang/Object;
.source "WrapCustomizationReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public static readByte(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;B)B
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readByte(Ljava/lang/String;B)B

    move-result p2

    :cond_0
    return p2
.end method

.method public static readIntArray(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;[I)[I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static readInteger(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;I)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static readString(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static readStringArray(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
