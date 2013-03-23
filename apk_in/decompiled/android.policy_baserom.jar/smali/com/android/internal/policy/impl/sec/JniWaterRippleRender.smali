.class public Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;
.super Ljava/lang/Object;
.source "JniWaterRippleRender.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "WaterRipple"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init()V
.end method

.method public static native initWaters([F[SIIIII)V
.end method

.method public static native move([F[FIIIIIILjava/lang/Boolean;)I
.end method

.method public static native ripple([FIIIIFFF)V
.end method
