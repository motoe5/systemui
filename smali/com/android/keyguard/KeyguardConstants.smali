.class public Lcom/android/keyguard/KeyguardConstants;
.super Ljava/lang/Object;
.source "KeyguardConstants.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
